package br.edu.unifio.eventos.repositorios;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import br.edu.unifio.eventos.entity.Categoria;

@SpringBootTest
public class CategoriaRepositorioTest {

    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Test
    public void inserir() {
        Categoria categoria = new Categoria();
        categoria.setNome("Eletrônicos");

        categoriaRepositorio.save(categoria);
    }
}
