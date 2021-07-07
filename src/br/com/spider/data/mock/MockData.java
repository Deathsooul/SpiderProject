package br.com.spider.data.mock;

import java.util.HashMap;

import br.com.spider.model.Arrecadacao;
import br.com.spider.model.Categoria;
import br.com.spider.model.Contribuinte;
import br.com.spider.model.Destinacao;
import br.com.spider.model.Item;

public class MockData {

	public static HashMap<Integer, Categoria> categorias;
	public static HashMap<Integer, Contribuinte> contribuintes;
	public static HashMap<Integer, Item> itens;
	public static HashMap<Integer, Arrecadacao> arrecadacoes;
	public static HashMap<Integer, Destinacao> destinatarios;
	
	static {
		
		// Categorias
		Categoria categoria = new Categoria();
		categoria.setId(1);
		categoria.setNome("Água");
		Categoria categoria2 = new Categoria();
		categoria2.setId(2);
		categoria2.setNome("Luz");
		
		categorias = new HashMap<Integer, Categoria>();
		categorias.put(1, categoria);
		categorias.put(2, categoria2);
		
		
		// Contribuintes
		Contribuinte contribuinte = new Contribuinte();
		contribuinte.setId(1);
		contribuinte.setNome("Copel");
		Contribuinte contribuinte2 = new Contribuinte();
		contribuinte2.setId(2);
		contribuinte2.setNome("Petrobras");
		
		contribuintes = new HashMap<Integer, Contribuinte>();
		contribuintes.put(1, contribuinte);
		contribuintes.put(2, contribuinte2);
		
		// Itens
		Item item = new Item();
		item.setId(1);
		item.setNomeItem("Energia");
		item.setCategoria(categorias.get(2));
		Item item2 = new Item();
		item2.setId(2);
		item2.setNomeItem("Comida");
		item2.setCategoria(categorias.get(1));
		
		itens = new HashMap<Integer, Item>();
		itens.put(1, item);
		itens.put(2, item2);
		
		arrecadacoes = new HashMap<Integer, Arrecadacao>();
		destinatarios = new HashMap<Integer, Destinacao>();
	}
}
