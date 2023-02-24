<?php
	function vd($var){
		echo "<pre>".print_r($var,true)."</pre>";
	}
	function get_catalogs(){
		$pages = dir.'/pages/';
		$cats = scandir($pages);
		$cats = array_diff($cats, ['.','..']);
		$result = [];
		foreach ($cats as $key => $dir_name) {
			$result[$pages.$dir_name] = $dir_name;
		}
		$result = array_reverse($result);
		//return $result;
		return [
		    dir.'/pages/Пицца' => 'Пицца',
		    dir.'/pages/Закуски' => 'Закуски',
			dir.'/pages/РОЛЛЫ' => 'РОЛЛЫ',
		    dir.'/pages/Напитки' => 'Напитки',
		];
	}

	function view_all_cards(){
		$cat_id = 1;
		foreach (get_catalogs() as $path => $title) {
			echo "<h2 id=\"title-id-{$cat_id}\">{$title}</h2>";
			echo '<div class="cards">';
			$cards = scandir($path);
			$cards = array_diff($cards, ['.','..']);
			foreach ($cards as $filename) {
				$card_id = str_replace('.php', null, $filename);
				$card = $path.'/'.$filename;
				require_once($card);
				$desc = str_replace(PHP_EOL, ', ', $desc);
				$desc = str_replace(',,', ',', $desc);
				if (substr($desc, 0, 1) == ',') $desc = substr($desc, 1, -1);
				$desc = str_replace('Состав:', '<br>Состав:', $data['desc']);
				
				echo '<div class="card">
					<div class="img" style="background: url('.$data['image'].');" alt="'.$data['title'].'"></div>
					<b class="title">'.$data['title'].'</b>
					<div class="more-info">'.$desc.'</div>
					<div class="bay">
						<div class="prices">
							<div class="price">'.$data['price'].'руб.</div>
						</div>
						<div 
							class="buttons" 
							data-cat-id="'.$cat_id.'" 
							data-card-id="'.$card_id.'"
							data-card-price="'.$data['price'].'"
						>
							<button class="minus" onclick="minus(this)">-</button>
							<input type="text" value="1" name="count" class="count" oninput="count_change(this)">
							<button class="plus" onclick="plus(this)">+</button>
							<button class="add-to-cart" onclick="add_to_cart(this)">В корзину</button>
						</div>
					</div>
				</div>';
			}
			echo '</div>';
			$cat_id++;
		}
	}


	function product($data_cat_id, $data_card_id, $count){
		$cat_id = 1;
		foreach (get_catalogs() as $path => $title) {
			$cards = scandir($path);
			$cards = array_diff($cards, ['.','..']);
			foreach ($cards as $filename) {
				$card_id = str_replace('.php', null, $filename);
				if ($data_cat_id == $cat_id and $data_card_id == $card_id) {
					$card = $path.$filename;
					require_once($card);
					$title = str_replace(PHP_EOL, NULL, $data['title']);
					$price = str_replace(PHP_EOL, NULL, $data['price']);
					return [
						'title' => $title,
						'price' => ($price * $count).' руб.',
						'count' => $count.' шт.',
					];
				}
			}
			$cat_id++;
		}
		return [
			'title' => '?',
			'price' => '?',
		];
	}

	function orders($type){
		if ($type == 'new-orders') {
			$path = order_list;
			echo '<h3>Новые заказы</h3>';
		}
		if ($type == 'old-orders') {
			$path = old_order_list;
			echo '<h3>Выполненные заказы</h3>';
		}
		$new_order = file_get_contents($path);
		$new_order = json_decode($new_order);
		foreach ($new_order as $key => $order) {
			if ($order == null) continue;
			echo '<div class="order">';
				echo '<div class="adress">'.$order->adress.'</div>';
				echo '<div class="phone">'.$order->phone.'</div>';
				echo '<piv class="name">'.$order->name.'</piv>';
				echo '<div class="pay">'.$order->pay.'</div>';
				echo '<div class="products">';
				foreach ($order->products as $product) {
					echo '<div class="product">';
						echo '<div class="title">'.$product->title.'</div>';
						echo '<div class="count">'.$product->count.'</div>';
						echo '<piv class="price">'.$product->price.'</piv>';
					echo '</div>';
				}
				echo '</div>';
				echo '<div class="buttons">';
					if ($type == 'new-orders') {
						echo '<div class="old_order" onclick="old_order('.$key.')">Заказ выполнен</div>';
					}
					echo '<div class="rm_order" onclick="rm_order('.$key.')">Удалить заказ</div>';
				echo '</div>';
			echo '</div>';
		}
	}

	function send_order($post) {
		$data = [];
		// Определяем способ оплаты
		if ($post->pay == 1) $pay = 'Наличными курьеру';
		if ($post->pay == 2) $pay = 'Картой при доставке';
		if ($post->pay == 3) $pay = 'Онлайн на сайте';
		$data['pay'] = $pay;
		// Считываем заказ
		$products = explode(';', $post->string);
		foreach ($products as $product) {
			if (empty($product)) continue;
			$product = explode(',', $product);
			$data['products'][] = product($product[0], $product[1], $product[2]);
		}
		// Определяем данные о заказчике
		$data['name'] = $post->name;
		$data['phone'] = $post->phone;
		$data['adress'] = $post->adress;
		// Возвращаем данные заказа
		if (file_exists(order_list)) {
			$olds = file_get_contents(order_list);
			$olds = json_decode($olds);
		} else {
			$olds = [];
		}
		// Записываем заказ в базу новых заказов
		$new = [];
		$new[] = $data;
		foreach ($olds as $old) {
			$new[] = $old;
		}
		$new = json_encode($new);
		echo $new;
		file_put_contents(order_list, $new);
	}
	function undefined($post){
		echo "<h3>Ошибка</h3>";
		echo "<p style=\"text-align:center\">Страница '{$post->page}' не найдена!</p>";
		vd($post);
	}
	function get_page($post) {
		switch ($post->page) {
			case 'new-orders': orders($post->page); break;
			case 'old-orders': orders($post->page); break;
			case 'production': production();        break;
			case 'settings'  : settings();          break;
			default: undefined($post); break;
		}
	}
	function get_cat_id($cat_path){
		$cat_id = 1;
		foreach (get_catalogs() as $path => $title) {
			if ($cat_path == $path) return $cat_id;
			$cat_id++;
		}
		return false;
	}
	function get_cat_path($id){
		$cat_id = 1;
		foreach (get_catalogs() as $path => $title) {
			if ($cat_id == $id) return $path;
			$cat_id++;
		}
		return false;
	}
	function print_production($cat_path) {
		$cat_id = get_cat_id($cat_path);
		$cards = scandir($cat_path);
		$cards = array_diff($cards, ['.','..']);
		foreach ($cards as $filename) {
			$card_id = str_replace('.php', null, $filename);
			include $cat_path.$filename;
			echo '<div class="card" data-cat-id="'.$cat_id.'" data-card-id="'.$card_id.'">';
				echo '<div class="title">'.$data['title'].'</div>';
				echo '<div class="card-buttons">';
				echo '<button class="rm-product" onclick="rm_product('.$cat_id.','.$card_id.')">Удалить</button>';
				echo '<button class="edit-product" onclick="edit_product('.$cat_id.','.$card_id.')">Редактировать</button>';
				echo '</div>';
			echo '</div>';
		}
	}
	function production(){
		$cat_id = 1;
		$cat_path = '';
		echo '<h3>Товары</h3>';
		echo '<header>';
			echo '<select class="select-category" onchange="select_category()">';
			foreach (get_catalogs() as $path => $cat_name) {
				if (empty($cat_path)) $cat_path = $path;
				echo '<option value="'.$cat_id.'">'.$cat_name.'</option>';
				$cat_id++;
			}
			echo '</select>';
			echo '<button class="add-product" onclick="add_product()">+ Добавить</button>';
		echo '</header>';
		echo '<section>';
			print_production($cat_path);
		echo '</section>';
	}
	function old_order($post) {
		$orders = file_get_contents(order_list);
		$orders = (array)json_decode($orders);
		$old = $orders[$post->id];
		$orders[$post->id] = null;
		$orders = json_encode($orders);
		file_put_contents(order_list, $orders);
		if (file_exists(old_order_list)){
			$olds = file_get_contents(old_order_list);
			$olds = (array)json_decode($olds);
		} else {
			$olds = [];
		}
		$olds[] = $old;
		$olds = json_encode($olds);
		file_put_contents(old_order_list, $olds);
	}
	function rm_order($post) {
		if ($post->page == 'new-orders') $path = order_list;
		if ($post->page == 'old-orders') $path = old_order_list;
		$orders = file_get_contents($path);
		$orders = (array)json_decode($orders);
		$orders[$post->id] = null;
		$orders = json_encode($orders);
		file_put_contents($path, $orders);
	}
	function rm_product($post) {
		$cat = get_cat_path($post->cat_id);
		if ($cat != false) {
			$path = $cat.$post->card_id.'.php';
			if (file_exists($path)) {
				unlink($path);
			}
		}
	}
	function view_select_category($post){
		$cat_id = 1;
		foreach (get_catalogs() as $path => $cat_name) {
			if ($cat_id == $post->id) {
				print_production($path);
			}
			$cat_id++;
		}
	}
	function save_modal($post){
		$cat_path = get_cat_path($post->cat_id);
		if ($cat_path != false) {
			if ($post->card_id == 0) {
				$int = 1;
				$card_path = $cat_path.$int.'.php';
				while (file_exists($card_path)) {
					$card_path = $cat_path.$int.'.php';
					$int++;
				}
				save_card_array($card_path, $post);
			} else {
				$card_path = $cat_path.$post->card_id.'.php';
				if (file_exists($card_path)) {
					save_card_array($card_path, $post);
				}
			}		
		}
	}
	function save_card_array($card_path, $post) {
		$data = "<?php \$data = [\n\t'image' => '{$post->img_url}',\n\t'title' => '{$post->title}',\n\t'desc' => '{$post->description}',\n\t'count' => '{$post->count}',\n\t'price' => '{$post->price}',\n\t'price_2' => '{$post->old_price}',\n]; ?>";
		vd([$card_path, $post, $data]);
		file_put_contents($card_path, $data);
	}

	function edit_product($post){
		$cat_path = get_cat_path($post->cat_id);
		if ($cat_path != false) {
			$card_path = $cat_path.$post->card_id.'.php';
			if (file_exists($card_path)) {
				include $card_path;
				foreach ($data as $key => $value) {
					$data[$key] = str_replace("\n", '', $data[$key]);
					$data[$key] = str_replace("\t", '', $data[$key]);
				}
				echo json_encode($data);
			}
		}
	}

	function settings(){
		global $config;
		echo '<h3>Настройки</h3>';
		echo '<div class="settings">
				<div class="grid">
					<label>Номер телефона на сайте</label>
					<input type="text" name="phone" value="'.$config->phone.'">
				</div>
				<div class="flex">
					<div class="grid">
						<label>Логин администратора</label>
						<input type="text" name="user" value="'.$config->user.'">
					</div>
					<div class="grid">
						<label>Пароль администратора</label>
						<input type="text" name="pass" value="'.$config->pass.'">
					</div>
				</div>
			</div>
			<button class="save-config" onclick="save_config()">Сохранить настройки</button>
			';
	}
	function save_settings($post) {
		$config = (object)[
			'phone' => $post->phone,
			'user' => $post->user,
			'pass' => $post->pass,
		];
		file_put_contents(config, json_encode($config));
	}
?>

