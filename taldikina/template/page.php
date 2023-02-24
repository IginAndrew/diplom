<?php
	if (uri == '/Доставка') {
		$title = 'Доставка - Пицца 46';
		$content = dir.'/menu/delivery.php';
	}
	if (uri == '/Акции') {
		$title = 'Акции - Пицца 46';
		$content = dir.'/menu/stocks.php';
	}
	if (uri == '/Отзывы') {
		$title = 'Отзывы - Пицца 46';
		$content = dir.'/menu/reviews.php';
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title><?=$title?></title>
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
		<a href="tel:<?php echo $config->phone; ?>" class="phone"></a>
	</header>
	<aside class="menu">
		<a href="/">Каталог</a>
		<a href="/Доставка">Доставка</a>
		<a href="/Акции">Акции</a>
		<a href="/Отзывы">Отзывы</a>
		<div class="aside-menu-closer" onclick="aside('menu','hide')"></div>
	</aside>
	<main style="top: 60px;">
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
			<?php require_once($content); ?>
		</section>
	</main>
</body>
</html>