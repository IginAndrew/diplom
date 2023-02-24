<?php session_start();

if (isset($_POST['auth'])) {
	if ($_POST['user'] == $config->user and $_POST['pass'] == $config->pass) {
		$_SESSION['ROOT'] = true;
	}
}

if (isset($_SESSION['ROOT'])) { 
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Панель администратора</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="/libs/jquery.js"></script>
	<script type="text/javascript" src="/libs/main.js"></script>
	<style type="text/css"><?php include dir.'/template/admin.css'; ?></style>
</head>
<body>
	<aside>
		<button onclick="get_page('new-orders')">Новые заказы</button>
		<button onclick="get_page('old-orders')">Выполненные заказы</button>
		<button onclick="get_page('production')">Товары</button>
		<button onclick="get_page('settings')">Настройки</button>
	</aside>
	<main data-page="new-orders">
		<?php orders('new-orders'); ?>
	</main>
	<div class="modal-add-card">
		<header>
			<button class="close-modal" onclick="close_modal()">Закрыть</button>
			<button class="save-modal" onclick="save_modal()">Сохранить</button>
		</header>
		<div class="group-inputs">
			<div class="grid">
				<label>Ссылка на изображение</label>
				<input type="text" name="img_url">
			</div>
			<div class="grid">
				<label>Заголовок</label>
				<input type="text" name="title">
			</div>
			<div class="flex">
				<div class="grid">
					<label>Колличество</label>
					<input type="text" name="count">
				</div>
				<div class="grid">
					<label>Цена</label>
					<input type="text" name="price">
				</div>
				<div class="grid">
					<label>Старая цена</label>
					<input type="text" name="old_price">
				</div>
			</div>
			<div class="grid">
				<label>Описание</label>
				<textarea type="text" name="description"></textarea>
			</div>
		</div>
	</div>
	<script type="text/javascript"><?php include dir.'/libs/admin.js'; ?></script>
</body>
</html>
<?php } else { ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Авторизация</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
		body {
			font-family: 'Ubuntu', 'Roboto', sans-serif;
			font-weight: 300;
			font-size: 11pt;
		}
		form {display: grid;width: 300px;margin: 0 auto;}
		form * {margin: 5px;padding: 5px;text-align: center;}
		form input[type="submit"] {cursor: pointer;}
	</style>
</head>
<body>
	<form method="POST">
		<h3>Авторизация</h3>
		<input type="username" name="user" placeholder="Имя пользователя">
		<input type="password" name="pass" placeholder="Пароль пользователя">
		<input type="submit" name="auth" value="Войти">
	</form>
</body>
</html>
<?php } ?>