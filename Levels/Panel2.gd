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
		mensagem = "Gerência de Problemas\n\nObjetivo: é minimizar a ocorrência de interrupções do serviço, por meio de ações para prevenir a ocorrência ou recorrência de problemas.\n\nResultados esperados: \n\n1. Os problemas são identificados, registrados, classificados, priorizados, analisados por meio de análise de causa-raiz e, se possível, resolvidos. \n\n2. As ações tomadas para resolução dos problemas são registradas. \n\n3. Os problemas cujos tratamentos não progrediram são escalados. \n\n4. A eficácia da resolução de problemas é monitorada, analisada e reportada. \n\n5. O efeito de problemas não resolvidos de forma permanente é minimizado. \n\n6. A situação e o progresso da resolução dos problemas são comunicados às partes interessadas. \n\n7. Informações relacionadas aos problemas são utilizadas para alimentar uma base de problemas e ações de solução\n\n"
	if pag == 2:
		mensagem = "Gerência de Mudanças\n\nObjetivo: é assegurar que todas as mudanças no serviço relacionadas ao fornecimento do produto e atendimento ao cliente sejam avaliadas, aprovadas, implementadas e revisadas de maneira controlada.\n\nResultados esperados: \n\n1. As solicitações de mudanças são registradas e avaliadas considerando seu impacto no negócio e nos clientes. \n\n2. As solicitações de mudanças são aprovadas antes das mudanças serem desenvolvidas e implantadas. \n\n3. Um cronograma de mudanças e liberações é estabelecido e comunicado às partes interessadas. \n\n4. As mudanças aprovadas são desenvolvidas e avaliadas\n\n5. Mudanças que não tiveram sucesso são revertidas ou remediadas. \n\n"
	if pag == 3:
		mensagem = "Orçamento e Contabilização do Serviço  \n\nObjetivo: é permitir um controle financeiro efetivo e apoiar a tomada de decisão sobre o fornecimento do produto e o atendimento ao cliente. \n\nResultados esperados:  \n\n1. Os custos de fornecimento do produto e de atendimento ao cliente são orçados.  \n\n2. Os custos são monitorados, em intervalos planejados, em relação ao orçamento e os custos reais são comunicados às partes interessadas.  \n\n3. Em intervalos planejados, as previsões financeiras são analisadas para a tomada de decisões \n\n"
	if pag == 4:
		mensagem = "Gerência da Capacidade  \n\nObjetivo: é assegurar que a organização tenha capacidade para atender os requisitos, atuais e previstos para o futuro, acordados para o fornecimento do produto e atendimento ao cliente.  \n\nResultados esperados:  \n\n1. Os requisitos de capacidade para recursos humanos, técnicos e financeiros são identificados, documentados e mantidos atualizados, com base na demanda por serviços.  \n\n2. A capacidade atual e a prevista para o futuro são planejadas, incluindo os limiares para mudanças na capacidade do serviço.  \n\n3. A capacidade é disponibilizada para atender os requisitos de capacidade e desempenho acordados. \n\n4. A utilização da capacidade é monitorada, analisada e são identificadas oportunidades de melhoria do desempenho \n\n"
	if pag > 4:
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
