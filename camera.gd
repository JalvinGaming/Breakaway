extends Camera3D
const ACCEL = 20.0
var CameraNode
var Player
func _ready():
	CameraNode = get_node("../Player/CameraPos")
	Player = get_node("../Player")
func _physics_process(delta):
	position = lerp(position, CameraNode.global_position, ACCEL * delta)
	look_at(Player.global_position + Vector3(0, 1.2, 0), Vector3.UP)
