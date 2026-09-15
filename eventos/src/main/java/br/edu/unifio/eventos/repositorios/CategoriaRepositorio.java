package br.edu.unifio.eventos.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import br.edu.unifio.eventos.entity.Categoria;

public interface CategoriaRepositorio extends JpaRepository<Categoria, Integer> {
}
