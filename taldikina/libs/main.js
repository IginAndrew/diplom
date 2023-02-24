function ajax(data, func = false, json = false){
	$.ajax({
		method: "POST",
		url: "/index.php",
		data: data
	})
	.done(function(response) {
		if (json) response = JSON.parse(response);
		if (func != false){
			window[func](response);
		}
	});
}
function aside(name = null, action = null) {
	var closer =  $('div.aside-'+name+'-closer');
	var aside = $('aside.'+name);
	if (action == null) {
		var opened = aside.attr('data-open');
		if (opened == 'true') {
			action = 'hide';
			if (name == 'cart') {
				window['aside']('order-data','hide');
			}
		} else {
			action = 'show';
			if (name == 'menu') {
				window['aside']('cart','hide');
				window['aside']('order-data','hide');
			}
			if (name == 'cart') {
				window['aside']('menu','hide');
			}
		}
	}
	if (action == 'show') {
		$('header > div.'+name).css('background-color', '#fff3');
		aside.attr('data-open', 'true');
		aside.css('display', 'block');
		closer.css('display', 'block');
		if (name == 'cart') {
			$('header > .cart > .count').css('background-color','white');
			$('header > .cart > .count').css('color','black');
		}
	}
	if (action == 'hide') {
		$('header > div.'+name).css('background-color', 'transparent');
		aside.attr('data-open', 'false');
		aside.css('display', 'none');
		closer.css('display', 'none');
		if (name == 'cart') {
			$('header > .cart > .count').css('background-color','#fff3');
			$('header > .cart > .count').css('color','white');
		}
	}
}

function minus(self){
	var input = $(self).parent().find('.count');
	var count = Number(input.val());
	if (count > 1) {
		count--;
		input.val(count);
	}
}

function plus(self){
	var input = $(self).parent().find('.count');
	var count = Number(input.val());
	if (count < 10) {
		count++;
		input.val(count);
	}
}
function count_change(self){
	var count = $(self).val();
	if (count > 10) {
		$(self).val(10);
	}
	if (count < 0) {
		$(self).val(0);
	}
}
function update_total_sum(){
	var items = $('aside.cart > .list').find('.cart-item');
	total_price = 0;
	$.each(items, function (key, item){
		var item_count = $(item).attr('data-count');
		var item_price = $(item).attr('data-price');
			total_price += Number(item_count) * item_price;
	})
	$('aside.cart > .total > .sum').text(total_price);
}
function rm_in_cart(self){
	$(self).parent().fadeOut(300, function(){
		$(self).parent().remove();
		var items = $('aside.cart > .list').find('.cart-item');
		var count = 0;
		var total_price = 0;
		$.each(items, function (key, item){
			var item_count = $(item).attr('data-count');
				count += Number(item_count);
		})
		$('header > .cart > .count').attr('data-count', count);
		$('header > .cart > .count').text(count);
		update_total_sum();
	});
}
function clear_list(){
	$('aside.cart > .list').html('');
	$('header > .cart > .count').attr('data-count', 0);
	$('header > .cart > .count').text(0);
	$('aside.cart > .total > .sum').text(0);
}
function view_message(){
	$('body').append('<i class="add-to-cart-message">Добавлено в корзину!</i>');
	$('.add-to-cart-message').fadeOut(3000, function(){
		$('.add-to-cart-message').remove();
	});
}
function add_to_cart(self){
	var buttons = $(self).parent();
	var bay = buttons.parent();
	var card = bay.parent();
	var title = card.find('.title').text();
	var input = buttons.find('.count');
	var cat_id = buttons.attr('data-cat-id');
	var card_id = buttons.attr('data-card-id');
	var price = Number(buttons.attr('data-card-price'));
	var count = Number(input.val());
	if (count >= 1 && count <= 10) {
		var sum = count * price;
		var replace_item = false;
		var items = $('aside.cart > .list').find('.cart-item');
		$.each(items, function (key, item){
			var item_cat_id = $(item).attr('data-cat-id');
			var item_card_id = $(item).attr('data-card-id');
			if (item_cat_id == cat_id && item_card_id == card_id) {
				replace_item = $(item);
			}
		})
		if (replace_item != false){
			var item_count = replace_item.attr('data-count');
				item_count = Number(item_count) + count;
			var item_price = replace_item.attr('data-price');
				item_price = item_count * price;
				replace_item.attr('data-count', item_count);
				replace_item.find('.cart-count').text(item_count+' шт.');
				replace_item.find('.cart-price').text(item_price+' руб.');
		} else {
			var html = $('aside.cart > .list').html();
				html += '<div class="cart-item" data-cat-id="' + cat_id + '" data-card-id="' + card_id + '" data-count="' + count + '" data-price="' + price + '">';
				html += '<span class="cart-title">' + title + '</span>';
				html += '<span class="cart-count">' + count + ' шт.</span>';
				html += '<span class="cart-price">' + sum + ' руб.</span>';
				html += '<span class="cart-item-delete" onclick="rm_in_cart(this)"></span>';
				html += '</div>';
			$('aside.cart > .list').html(html);
		}
		var count_in_cart = $('header > .cart > .count').attr('data-count');
			count_in_cart = Number(count_in_cart);
			count_in_cart += count;
		$('header > .cart > .count').attr('data-count', count_in_cart);
		$('header > .cart > .count').text(count_in_cart);
		update_total_sum();
		view_message();
	}
}

function send_order(){
	var input = $('aside.order-data > div.inputs');

	/* Данные о заказчике */
	var name = input.find('[name="name"]').val();
	var phone = input.find('[name="phone"]').val();
	var adress = input.find('[name="adress"]').val();
	var pay = input.find('[name="pay"]').val();

	/* Список покупок */
	var string = '';
	var items = $('aside.cart > .list').find('.cart-item');
	$.each(items, function (key, item){
		var item_cat_id = $(item).attr('data-cat-id');
		var item_card_id = $(item).attr('data-card-id');
		var item_count = $(item).attr('data-count');
		string += item_cat_id + ',' + item_card_id + ',' + item_count + ';';
	})

	/* Отправка AJAX запроса на сервер*/
	ajax({
		action: 'send_order',
		pay: pay,
		name: name,
		phone: phone,
		adress: adress,
		string: string
	}, 'success_send_order', false);
}
function success_send_order(response){
	$('body').append('<i class="add-to-cart-message">Ваш заказ отправлен!</i>');
	$('.add-to-cart-message').fadeOut(5000, function(){
		$('.add-to-cart-message').remove();
	});
	clear_list();
	aside('cart','hide');
	aside('order-data','hide');
	console.log(response);
}