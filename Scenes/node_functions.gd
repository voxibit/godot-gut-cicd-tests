extends Node

var hp: int


func _ready():
	self.hp = 100


func damage(amt: int):
	hp = max(0, hp - amt)
