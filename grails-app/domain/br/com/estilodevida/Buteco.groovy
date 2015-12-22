package br.com.estilodevida

import br.com.estilodevida.dominios.DmTipoPessoa;

class Buteco {

	String nome;
	String telefone;
	DmTipoPessoa tipo;
	
	static mapping = {
		id column: 'idbuteco', type: 'long';
	}
	
	static constraints = {
		nome (nullable: false, blank: false, maxLength:120)
		telefone (nullable: false, blank: false, maxLength:20)
		tipo (nullable: false, blank: false)
	}
	
}
