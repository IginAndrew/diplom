<?php
	define('dir', __DIR__);
	define('eol', "\n");
	define('tab', "\t");
	define('config', dir.'/config.json');
	define('uri', urldecode($_SERVER['REQUEST_URI']));
	define('order_list', dir.'/orders/new.json');
	define('old_order_list', dir.'/orders/old.json');
	$config = json_decode(file_get_contents(config));
	include 'libs/functions.php';
	if (isset($_POST['action'])){
		include 'libs/ajax.php';
	} else {
		if (uri == '/авторизация') {
			include 'template/admin.php';
		} elseif (uri == '/') {
			include 'template/index.php';
		} else {
			include 'template/page.php';
		}
	}
?>