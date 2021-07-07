package br.com.spider.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;

import br.com.spider.data.mock.MockData;
import br.com.spider.model.Item;

public class ItemDao {

	public List<Item> getAllItens() {

		List<Item> itens = new ArrayList<Item>();
		for (Entry<Integer, Item> entry : MockData.itens.entrySet()) {
			itens.add(entry.getValue());
		}

		return itens;
	}

	public boolean salvarItem(Item item) {
		int id = MockData.itens.size();
		id++;

		item.setId(id);
		MockData.itens.put(id, item);

		return true;
	}

	public Item getItemById(Integer id) {
		return MockData.itens.get(id);
	}

}
