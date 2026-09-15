package br.edu.unifio.eventos.repositorios;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import jakarta.persistence.EntityManager;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import br.edu.unifio.eventos.entity.Categoria;
import br.edu.unifio.eventos.entity.Cliente;
import br.edu.unifio.eventos.entity.ItemPedido;
import br.edu.unifio.eventos.entity.Pedido;
import br.edu.unifio.eventos.entity.Produto;

@SpringBootTest
public class ItemPedidoRepositorioTest {

    @Autowired
    private ItemPedidoRepositorio itemPedidoRepositorio;

    @Autowired
    private ClienteRepositorio clienteRepositorio;

    @Autowired
    private PedidoRepositorio pedidoRepositorio;

    @Autowired
    private EntityManager entityManager;

    @Test
    @Transactional
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

        pedido = pedidoRepositorio.save(pedido);

        Categoria categoria = new Categoria();
        categoria.setNome("Eletrônicos");

        entityManager.persist(categoria);

        Produto produto = new Produto(
            null,
            "Notebook",
            new BigDecimal("3500.00"),
            categoria
        );

        entityManager.persist(produto);

        ItemPedido itemPedido = new ItemPedido(
            null,
            1,
            new BigDecimal("3500.00"),
            pedido,
            produto
        );

        itemPedidoRepositorio.save(itemPedido);
    }
}
