package br.com.spider.dao;

import br.com.spider.data.mock.MockData;
import br.com.spider.model.Destinacao;

public class DestinacaoDao {

	public boolean salvarDestinatario(Destinacao destinacao) {
		int id = MockData.destinatarios.size();
		id++;
		
		destinacao.setId(id);
		MockData.destinatarios.put(id, destinacao);

		return true;
	}
}
