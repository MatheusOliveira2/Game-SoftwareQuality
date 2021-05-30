extends Panel

var pag = 1

var perc = null

var mensagem

func _ready():
	pass

func _process(delta):
	
	if pag == 1:
		$previous.hide();
	else:
		$previous.show();
	
	
	if pag == 1:
		mensagem = "um"
	if pag == 2:
		mensagem = "ndsjkfsdjkfhsdjkfhksdhfjksdhfjsdkhfjksdhfsjkd"
	$RichTextLabel.set_text(str(mensagem))
	


func _on_next_pressed():
	pag += 1
	print(pag)
	pass # Replace with function body.


func _on_previous_pressed():
	pag -= 1
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	show()
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	hide()
	pass # Replace with function body.
