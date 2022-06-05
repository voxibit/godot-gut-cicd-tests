extends GutTest

const NodeFunctions: Script = preload("res://Scenes/node_functions.gd")
var node: NodeFunctions


func before_each():
	node = NodeFunctions.new()
	add_child(node)


func after_each():
	node.queue_free()


func test_damage():
	var hp: int = node.hp
	node.damage(10)
	self.assert_eq(hp - 10, node.hp, "Doing damage should reduce hp by the given amount")


func test_damage_too_much():
	var hp: int = node.hp
	node.damage(2 * hp)
	self.assert_eq(0, node.hp, "Doing damage > hp should leave hp==0")
