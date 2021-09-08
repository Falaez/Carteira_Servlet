package br.com.alura.carteira.teste;

import java.math.BigDecimal;
import java.time.LocalDate;
import br.com.alura.carteira.modelo.TipoTransacao;
import br.com.alura.carteira.modelo.Transacao;

public class Teste {

	public static void main(String[] args) {

		Transacao t = new Transacao("ITSA10",LocalDate.now(), new BigDecimal("10.0"), 100,  TipoTransacao.COMPRA );
		System.out.println(t);
	}

}
