<?php
	$reviews_path = dir.'/menu/reviews.json';
	if (isset($_POST['add-review'])) {
		$old = file_get_contents($reviews_path);
		$old = json_decode($old);
		$new = [];
		$new[] = [
			'name' => $_POST['name'],
			'email' => $_POST['email'],
			'message' => $_POST['message'],
			'date' => date("H:i d.m.Y"),
		];
		foreach ($old as $review) {
			$new[] = $review;
		}
		$new = json_encode($new);
		file_put_contents($reviews_path, $new);
	}
?>

<form method="post" class="add-review">
	<div class="grid name">
		<label>Ваше имя:</label>
		<input type="name" name="name">
	</div>
	<div class="grid email">
		<label>Ваш e-mail адрес:</label>
		<input type="email" name="email">
	</div>
	<div class="grid message">
		<label>Ваш отзыв:</label>
		<textarea name="message"></textarea>
	</div>
	<input type="submit" name="add-review" value="Отправить отзыв">
</form>
<div class="reviews-list">
	<?php
		if (file_exists($reviews_path)) {
			$reviews = file_get_contents($reviews_path);
			$reviews = json_decode($reviews);
			foreach ($reviews as $review) {
				echo "<div class='review'><b class='name'>{$review->name}</b><i class='date'>{$review->date}</i><p class='message'>{$review->message}</p></div>";
			}
		}
	?>
</div>