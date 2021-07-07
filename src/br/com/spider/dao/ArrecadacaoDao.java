package br.com.spider.dao;

import br.com.spider.data.mock.MockData;
import br.com.spider.model.Arrecadacao;

public class ArrecadacaoDao {

	public boolean salvarArrecadacao(Arrecadacao arrecadacao) {
		int id = MockData.arrecadacoes.size();
		id++;
		
		arrecadacao.setId(id);
		MockData.arrecadacoes.put(id, arrecadacao);

		return true;
	}
}
