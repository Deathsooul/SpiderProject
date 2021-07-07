package br.com.spider.model;

import java.util.Date;

public class Arrecadacao {

	private Integer id;
	private Contribuinte fonte;
	private Date mesAno;
	private float valor;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Contribuinte getFonte() {
		return fonte;
	}
	public void setFonte(Contribuinte fonte) {
		this.fonte = fonte;
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
