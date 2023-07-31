def verifica_prescricao(prescricao, estoque):
    # Cria um dicionário com a contagem dos medicamentos na prescrição
    dict_prescricao = {}
    for medicamento in prescricao:
        dict_prescricao[medicamento] = dict_prescricao.get(medicamento, 0) + 1

    # Verifica se os medicamentos na prescrição estão disponíveis no estoque
    for medicamento in dict_prescricao:
        if medicamento not in estoque or dict_prescricao[medicamento] > estoque.count(medicamento):
            return False

    return True
