package br.com.estilodevida

import java.util.Date;

import br.com.estilodevida.dominios.DmTipoPessoa;

class Pessoa {

	String nome;
	String telefone;
	DmTipoPessoa tipo;
	Date dataAniversario
	String dia
	String mes
	String ano
	
	static mapping = {
		id column: 'idpessoa', type: 'long';
	}
	
    static constraints = {
		nome (nullable: false, blank: false, maxLength:120)
		telefone (nullable: false, blank: false, maxLength:20)
		tipo (nullable: false, blank: false)
    }
}
