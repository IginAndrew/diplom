<!DOCTYPE html>
<html>
<head>
	<title>Пицца 46</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="/template/src/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="/template/style.css">
	<script type="text/javascript" src="/libs/jquery.js"></script>
	<script type="text/javascript" src="/libs/main.js"></script>
</head>
<body>
	<header>
		<div class="menu" onclick="aside('menu', null)"></div>
		<div class="cart" onclick="aside('cart', null)">
			<span class="count" data-count="0">0</span>
		</div>
		<a href="tel:<?php echo $config->phone; ?>" class="phone"></a>
	</header>
	<div class="menu-items">
		<div class="centred">
			<?php 
				$cat_id = 1;
				foreach (get_catalogs() as $path => $title) { 
					echo '<a href="#title-id-'.$cat_id.'" class="menu-item">'.$title.'</a>';
					$cat_id++;
				}
			?>
		</div>
	</div>
	<aside class="menu">
		<a href="/">Каталог</a>
		<a href="/Доставка">Доставка</a>
		<a href="/Акции">Акции</a>
		<a href="/Отзывы">Отзывы</a>
		<div class="aside-menu-closer" onclick="aside('menu','hide')"></div>
	</aside>
	<main>
		<div class="top">
			<a href="/" class="logo"></a>
			<div class="grid">
				<span class="bold">ДОСТАВКА ЗА 60 МИНУТ</span>
				<span class="paragraph">C 11:00 ДО 23:00</span>
			</div>
			<div class="grid">
				<span class="bold">БЕСПЛАТНАЯ ДОСТАВКА</span>
				<span class="paragraph">ПРИ ЗАКАЗЕ ОТ 600Р</span>
			</div>
			<div class="grid">
				<span class="bold">ЛЮБЫЕ СПОСОБЫ ОПЛАТЫ</span>
				<span class="paragraph">ИЛИ БАЛЛАМИ</span>
			</div>
		</div>
		<section>
			<?php view_all_cards(); ?>
		</section>
		<section class="card">
			
		</section>
	</main>
	<aside class="cart">
		<div class="list">
			
		</div>
		<div class="total">Итоговая сумма: <span class="sum">0</span> руб.</div>
		<div class="order">
			<button class="clear-list" onclick="clear_list()">Очистить корзину</button>
			<button class="order-list" onclick="aside('order-data','show')">Оформить заказ</button>
		</div>
		<div class="aside-cart-closer" onclick="aside('cart','hide')"></div>
	</aside>
	<aside class="order-data">
		<div class="inputs">
			<div class="grid">
				<label>Ваше имя</label>
				<input type="text" name="name">
			</div>
			<div class="grid">
				<label>Номер телефона</label>
				<input type="text" name="phone">
			</div>
			<div class="grid">
				<label>Адрес доставки</label>
				<input type="text" name="adress">
			</div>
			<div class="grid">
				<label>Способ оплаты</label>
				<select name="pay">
					<option value="1">Наличными курьеру</option>
					<option value="2">Картой при доставке</option>
					<option value="3">Онлайн на сайте</option>
				</select>
			</div>

		</div>
		<div class="btns">
			<button class="btn-exit" onclick="aside('order-data','hide')">Назад</button>
			<button class="btn-send" onclick="send_order()">Отправить заказ</button>
		</div>
		<div class="aside-order-data-closer" onclick="aside('order-data','hide')"></div>
	</aside>
</body>
</html>