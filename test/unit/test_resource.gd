extends GutTest

const ResourceFunctions: Script = preload("res://Scenes/resource_functions.gd")
var resource: ResourceFunctions


func before_each():
	resource = ResourceFunctions.new()
	resource.create(100)


func test_damage():
	var hp: int = resource.hp
	resource.damage(10)
	self.assert_eq(hp - 10, resource.hp, "Doing damage should reduce hp by the given amount")


func test_damage_too_much():
	var hp: int = resource.hp
	resource.damage(2 * hp)
	self.assert_eq(0, resource.hp, "Doing damage > hp should leave hp==0")
