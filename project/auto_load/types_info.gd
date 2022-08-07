extends Node

enum terrain_types {GROUND, GRASS, TALLGRASS, SAND, SHORE, WATER}
enum types {WATER, GRASS, FIRE, ELEC, ICE, DRAGON, PSY, GROUND, FLY, FIGHT, ROCK, STEEL, DARK, BUG, FAIRY, GHOST, POISON, NORMAL}

#Short names for readability in the efficiency matrix
const P = 2 #Value for super effective bonus
const B = 0.5 #Value for not very effective malus
const N = 1 #Value for normal damage
const Z = 0 #Value for no damage malus

onready var terrain_codes = {terrain_types.GROUND : 0,
terrain_types.GRASS : 1,
terrain_types.TALLGRASS : 2,
terrain_types.SAND : 3,
terrain_types.SHORE : 4,
terrain_types.WATER : 5}


onready var type_codes = {types.NORMAL : 0, 
types.FIRE: 1 , 
types.WATER : 2,
types.ELEC: 3, 
types.GRASS: 4,
types.ICE: 5,
types.FIGHT : 6,
types.POISON : 7,
types.GROUND : 8,
types.FLY : 9,
types.PSY : 10,
types.BUG : 11,
types.ROCK : 12,
types.GHOST : 13,
types.DRAGON : 14,
types.DARK : 15,
types.STEEL : 16,
types.FAIRY : 17}

	
onready var _efficiency_matrix=[[N,N,N,N,N,N,N,N,N,N,N,N,B,Z,N,N,B,N],
								[N,B,B,N,P,P,N,N,N,N,N,P,B,N,B,N,P,N],
								[N,P,B,N,B,N,N,N,P,N,N,N,P,N,B,N,N,N],
								[N,N,P,B,B,N,N,N,Z,P,N,N,N,N,B,N,N,N],
								[N,B,P,N,B,N,N,B,P,B,N,B,P,N,B,N,B,N],
								[N,B,B,N,P,B,N,N,P,P,N,N,N,N,P,N,B,N],
								[P,N,N,N,N,P,N,B,N,B,B,B,P,Z,N,P,P,B],
								[N,N,N,N,P,N,N,B,B,N,N,N,B,B,N,N,Z,P],
								[N,P,N,P,B,N,N,P,N,Z,N,B,P,N,N,N,P,N],
								[N,N,N,B,P,N,P,N,N,N,N,P,B,N,N,N,B,N],
								[N,N,N,N,N,N,P,P,N,N,B,N,N,N,N,Z,B,N],
								[N,B,N,N,P,N,B,B,N,B,P,N,N,B,N,P,B,B],
								[N,P,N,N,N,P,B,N,B,P,N,P,N,N,N,N,B,N],
								[Z,N,N,N,N,N,N,N,N,N,P,N,N,P,N,B,N,N],
								[N,N,N,N,N,N,N,N,N,N,N,N,N,N,P,N,B,Z],
								[N,N,N,N,N,N,B,N,N,N,P,N,N,P,N,B,N,B],
								[N,B,B,B,N,P,N,N,N,N,N,N,P,N,N,N,B,P],
								[N,B,N,N,N,N,P,B,N,N,N,N,N,N,P,P,B,N]]

onready var _move_cost_matrix= [[1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
								[1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
								[1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
								[2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2],
								[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],
								[99,99,1,99,99,2,99,99,99,1,99,99,99,1,2,99,99,99]]
func determine_type_efficiency(attack_type, defender_types):
	var type_efficienty = 1
	for type in defender_types:
		type_efficienty *= _efficiency_matrix[type_codes[attack_type]][type_codes[type]]
	return type_efficienty

func _ready():
	pass # Replace with function body.

