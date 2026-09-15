package br.edu.unifio.eventos.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import br.edu.unifio.eventos.entity.ItemPedido;

public interface ItemPedidoRepositorio extends JpaRepository<ItemPedido, Integer> {
}
