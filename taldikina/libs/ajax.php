<?php
	$post = (object)$_POST;
	if (isset($post->action)) {
		$action = $post->action;
		$action($post);
	} else {
		echo 'Ошибка: неизвестный запрос!';
	}
?>