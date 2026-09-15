package br.edu.unifio.eventos.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import br.edu.unifio.eventos.entity.Pedido;

public interface PedidoRepositorio extends JpaRepository<Pedido, Integer> {
}
