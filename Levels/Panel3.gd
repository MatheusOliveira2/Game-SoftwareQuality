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
		mensagem = "Gerência de Continuidade e Disponibilidade \n\nObjetivo: é assegurar que acordos de níveis de serviços serão atendidos em circunstâncias previsíveis.\n\nResultados esperados: \n\n1. Os requisitos e objetivos de continuidade e disponibilidade do serviço são identificados, documentados e mantidos atualizados. \n\n2. Os riscos com relação à disponibilidade e continuidade do serviço são avaliados em intervalos planejados. \n\n3. A disponibilidade do serviço é monitorada, os resultados são registrados e comparados com os objetivos. \n\n4. Causas de indisponibilidade não planejada de serviço são identificadas, analisadas e são tomadas ações corretivas. \n\n5. Um plano de continuidade é desenvolvido e deve incluir: critérios e responsabilidades para acionar a continuidade do serviço, procedimentos a serem implantados na ocorrência de interrupção significativa do serviço, objetivos de disponibilidade do serviço quando o plano de continuidade for acionado, requisitos de recuperação do serviço e procedimento para retorno às condições normais. \n\n6. A continuidade do serviço é avaliada em relação aos requisitos de continuidade. \n\n7. O plano de continuidade e a lista de contatos estão acessíveis para situações em que o acesso aos locais normais de serviço estiverem impedidos.\n\n"
	if pag == 2:
		mensagem = "Gerência da Segurança da Informação\n\nObjetivo: é gerenciar a segurança da informação durante toda a operação do serviço, no nível de segurança acordado.\n\nResultados esperados: \n\n1. Os requisitos de segurança da informação são identificados e acordados.\n\n2. Os riscos de segurança da informação são identificados, documentados, avaliados e são implementados controles de segurança. \n\n3. Os incidentes de segurança da informação são registrados, classificados, priorizados, resolvidos e, se necessário, escalados. \n\n4. Os controles de segurança da informação são documentados e sua eficácia é avaliada. \n\n5. Incidentes de segurança da informação são reportados e analisados para identificar oportunidades de melhoria\n\n"
	if pag == 3:
		mensagem = "ORelato de Serviços\n\nObjetivo:  é produzir e disponibilizar relatórios sobre o serviço de fornecimento do produto e atendimento ao cliente de forma a apoiar a comunicação e a tomada de decisão.\n\nResultados esperados: \n\n1. As necessidades de relatórios do serviço são identificadas. \n\n2. O conteúdo dos relatórios é definido. \n\n3. Os relatórios são produzidos de acordo com o conteúdo estabelecido. \n\n4. Os relatórios são comunicados às partes interessadas. \n\n"
	if pag > 3:
		hide()
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
	pag = 1
	pass # Replace with function body.
