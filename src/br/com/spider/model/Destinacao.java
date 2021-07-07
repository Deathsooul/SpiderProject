package br.com.spider.model;

import java.util.Date;

public class Destinacao {

	private Integer id;
	private Item saida;
	private Date mesAno;
	private float valor;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Item getSaida() {
		return saida;
	}
	public void setSaida(Item saida) {
		this.saida = saida;
	}
	public Date getMesAno() {
		return mesAno;
	}
	public void setMesAno(Date mesAno) {
		this.mesAno = mesAno;
	}
	public float getValor() {
		return valor;
	}
	public void setValor(float valor) {
		this.valor = valor;
	}
	
	
}
