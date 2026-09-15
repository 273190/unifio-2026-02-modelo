package br.edu.unifio.eventos.repositorios;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import br.edu.unifio.eventos.entity.Cliente;
import br.edu.unifio.eventos.entity.Pedido;

@SpringBootTest
public class PedidoRepositorioTest {

    @Autowired
    private PedidoRepositorio pedidoRepositorio;

    @Autowired
    private ClienteRepositorio clienteRepositorio;

    @Test
    public void inserir() {
        Cliente cliente = new Cliente(
            null,
            "João Silva",
            "joao@email.com",
            "44999990001"
        );

        cliente = clienteRepositorio.save(cliente);

        Pedido pedido = new Pedido(
            null,
            LocalDateTime.now(),
            "PENDENTE",
            new BigDecimal("100.00"),
            cliente,
            null
        );

        pedidoRepositorio.save(pedido);
    }
}
