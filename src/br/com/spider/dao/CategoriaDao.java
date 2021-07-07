package br.com.spider.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;

import br.com.spider.data.mock.MockData;
import br.com.spider.model.Categoria;

public class CategoriaDao {

	public List<Categoria> getAllCategorias() {
		
		List<Categoria> categorias = new ArrayList<Categoria>();
		for(Entry<Integer, Categoria> entry : MockData.categorias.entrySet()) {
			categorias.add(entry.getValue());
		}

		return categorias;
	}
	
	public boolean salvarCategoria(Categoria categoria) {
		int id = MockData.categorias.size();
		id++;
		
		categoria.setId(id);
		MockData.categorias.put(id, categoria);
		
		return true;
	}
	
	public Categoria getCategoriaById(Integer id) {
		return MockData.categorias.get(id);
	}
}
