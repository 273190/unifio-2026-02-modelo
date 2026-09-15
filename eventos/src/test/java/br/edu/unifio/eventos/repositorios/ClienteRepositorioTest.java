package br.edu.unifio.eventos.repositorios;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import br.edu.unifio.eventos.entity.Cliente;

@SpringBootTest
public class ClienteRepositorioTest {

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

        clienteRepositorio.save(cliente);
    }
}
