extends VBoxContainer

const TurnOrderItemScene = preload("TurnOrderItem.tscn")

var queue_order: Array

func update_list():
	var i = 0
	for n in get_children():
		if not queue_order.has(n):
			n.free_queue
	for n in queue_order:
		move_child(n, i)
		i += 1

func add_last(order_item_data):
	var order_item = TurnOrderItemScene.instance()
	queue_order.append(order_item)
	add_child(order_item)
	order_item.name = order_item_data.name
	order_item.order_name = order_item_data.name
	order_item.hp = order_item_data.hp
	order_item.sp = order_item_data.sp
	update_list()

func cycle():
	var front = queue_order.pop_front()
	queue_order.push_back(front)
	update_list()
