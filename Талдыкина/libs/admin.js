function select_category(id = null){
	if (id == null) {
		id = $('select.select-category').val();
	}
	ajax({
		action: 'view_select_category',
		id: id
	}, 'view_select_category', false);
}
function view_select_category(response){
	$('main[data-page="production"] > section').html(response);
}
function edit_product(cat_id, card_id){
	var modal = $('.modal-add-card');
	ajax({
		action: 'edit_product',
		cat_id: cat_id,
		card_id: card_id
	}, 'modal_post_data', true);
	modal.attr('data-cat-id', cat_id);
	modal.attr('data-card-id', card_id);
	modal.css('display', 'block');
}
function modal_post_data(json){
	var modal = $('.modal-add-card');
	modal.find('[name="img_url"]').val(json.image);
	modal.find('[name="title"]').val(json.title);
	modal.find('[name="price"]').val(json.price);
	modal.find('[name="count"]').val(json.count);
	modal.find('[name="old_price"]').val(json.price_2);
	modal.find('[name="description"]').val(json.desc);
	console.log(json);
}
function add_product(){
	var modal = $('.modal-add-card');
	modal.css('display', 'block');
	modal.attr('data-cat-id', '0');
	modal.attr('data-card-id', '0');
}
function close_modal(){
	var modal = $('.modal-add-card');
	modal.css('display', 'none');
	modal.attr('data-cat-id', '0');
	modal.attr('data-card-id', '0');
}
function save_modal(){
	var modal = $('.modal-add-card');
	var cat_id = $('select.select-category').val();
	ajax({
		action: 'save_modal',
		cat_id: cat_id,
		card_id: modal.attr('data-card-id'),
		img_url: modal.find('[name="img_url"]').val(),
		title: modal.find('[name="title"]').val(),
		price: modal.find('[name="price"]').val(),
		count: modal.find('[name="count"]').val(),
		old_price: modal.find('[name="old_price"]').val(),
		description: modal.find('[name="description"]').val()
	}, false, false);
	close_modal();
	select_category(cat_id);
}
function rm_product(cat_id, card_id){
	ajax({
		action: 'rm_product',
		cat_id: cat_id,
		card_id: card_id
	}, 'rm_product_success', false);
}
function rm_product_success(){
	var cat_id = $('select.select-category').val();
	select_category(cat_id);
}
function get_page(page = null){
	if (page == null) {
		page = $('main').attr('data-page');
	} else {
		$('main').attr('data-page', page);
	}
	ajax({
		action: 'get_page',
		page: page
	}, 'view_content', false);
}
function view_content(response){
	$('main').html(response);
}
function old_order(order_id){
	ajax({
		action: 'old_order',
		id: order_id
	}, false, false);
	get_page();
}
function rm_order(order_id){
	var page = $('main').attr('data-page');
	ajax({
		action: 'rm_order',
		page: page,
		id: order_id
	}, false, false);
	get_page();
}
function save_config(){
	var config = $('div.settings');
	ajax({
		action: 'save_settings',
		phone: config.find('[name="phone"]').val(),
		user: config.find('[name="user"]').val(),
		pass: config.find('[name="pass"]').val()
	}, false, false);
}