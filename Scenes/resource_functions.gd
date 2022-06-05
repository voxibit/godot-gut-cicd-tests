extends Resource

var hp: int

func create(hp: int):
	self.hp = hp
	
func damage(amt: int):
	hp = max(0, hp-amt)
