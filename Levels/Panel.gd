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
		mensagem = "Planejamento e Monitoração do Serviço:\n\nObjetivo: é planejar e monitorar a execução do serviço, ou seja, garantir que a execução do serviço deve ser monitorada com relação ao que foi planejado e devem ser realizadas ações corretivas para correção de eventuais desvios.\nResultados esperados: \n\n1. O escopo para fornecimento do serviço é definido, incluindo seus requisitos. \n\n2. As interfaces entre as unidades organizacionais e as partes interessadas externas são identificadas. \n\n3. As tarefas e os recursos necessários para realizar o serviço são dimensionados e estimados.\n\n4. Um plano geral para a execução do serviço é estabelecido com alocação das responsabilidades para execução das tarefas. \n\n5. A viabilidade de atender aos requisitos do serviço é avaliada, considerando as restrições e os recursos disponíveis. \n\n6. O progresso da execução do serviço é monitorado com relação ao planejado e os resultados são relatados. \n\n7. Ações para corrigir desvios com relação ao planejado são estabelecidas e acompanhadas até a conclusão.\n"
	if pag == 2:
		mensagem = "Gerência de Incidentes e de Solicitações de Serviços \n\nObjetivo: é tratar as solicitações de serviços e restaurar os serviços acordados (na ocorrência de incidentes) em conformidade com o Acordo de Nível de Serviço (ANS) estabelecido.\n\nResultados esperados: \n\n1. Os incidentes e as solicitações de serviços são registrados e classificados.\n\n 2. Os incidentes e as solicitações de serviços são priorizados e analisados. \n\n3. Os incidentes e as solicitações de serviços são resolvidos e encerrados. \n\n4. Os incidentes e as solicitações de serviços que não progrediram em conformidade com o Acordo de Nível de Serviço são escalados para níveis superiores. \n\n5. As informações relacionadas à situação e ao progresso de incidentes e solicitações de serviço são comunicadas às partes interessadas. \n\n6. As informações relacionadas aos incidentes são utilizadas para alimentar uma base de incidentes e ações de solução."
	if pag == 3:
		mensagem = "Gerência do Nível de Serviço\n\nObjetivo:  é garantir que os acordos de nível de serviço sejam atendidos.\n\nResultados esperados: \n\n1. Os serviços realizados pela organização relativos ao produto são identificados. \n\n2. Os objetivos do nível de serviço, limites de carga de trabalho e exceções são definidos em um ou mais Acordos de Nível de Serviço (ANSs).\n\n3. O desempenho em relação aos objetivos do serviço é monitorado e analisado em intervalos planejados, com base nos ANSs. \n\n4. O desempenho do serviço é comunicado às partes interessadas.\n\n 5. Mudanças na carga de trabalho em relação ao estabelecido nos ANSs são monitoradas e são refletidas no ANS. \n\n"
	if pag == 4:
		mensagem = "Gerência de Relacionamento com o Negócio \n\nObjetivo: é estabelecer e manter o relacionamento com o cliente e com outras partes interessadas\n\nResultados esperados: \n\n1. Os clientes do produto são identificados e registrados. \n\n2. Os responsáveis pelo relacionamento com os clientes são designados. \n\n3. Periodicamente a organização analisa o desempenho do serviço e a satisfação dos clientes, identificando oportunidades de melhoria. \n\n4. Reclamações do serviço são registradas, gerenciadas até o encerramento e, se necessário, escaladas para níveis superiores. \n\n"
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
