package br.com.spider.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;

import br.com.spider.data.mock.MockData;
import br.com.spider.model.Contribuinte;

public class ContribuinteDao {

	public List<Contribuinte> getAllContribuintes() {

		List<Contribuinte> contribuintes = new ArrayList<Contribuinte>();
		for (Entry<Integer, Contribuinte> entry : MockData.contribuintes.entrySet()) {
			contribuintes.add(entry.getValue());
		}

		return contribuintes;
	}

	public boolean salvarContribuinte(Contribuinte contribuinte) {
		int id = MockData.contribuintes.size();
		id++;

		contribuinte.setId(id);
		MockData.contribuintes.put(id, contribuinte);

		return true;
	}

	public Contribuinte getContribuinteById(Integer id) {
		return MockData.contribuintes.get(id);
	}
}
