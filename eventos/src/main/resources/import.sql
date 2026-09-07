-- 5 Categorias
INSERT INTO categoria (nome) VALUES ('Eletrônicos');
INSERT INTO categoria (nome) VALUES ('Informática');
INSERT INTO categoria (nome) VALUES ('Móveis');
INSERT INTO categoria (nome) VALUES ('Acessórios');
INSERT INTO categoria (nome) VALUES ('Livros');

-- 5 Produtos
INSERT INTO produto (nome, preco, categoria_id) VALUES ('Notebook', 3500.00, 1);
INSERT INTO produto (nome, preco, categoria_id) VALUES ('Mouse', 80.00, 2);
INSERT INTO produto (nome, preco, categoria_id) VALUES ('Cadeira Gamer', 1200.00, 3);
INSERT INTO produto (nome, preco, categoria_id) VALUES ('Teclado Mecânico', 250.00, 4);
INSERT INTO produto (nome, preco, categoria_id) VALUES ('Livro Java', 100.00, 5);

-- 5 Clientes
INSERT INTO cliente (nome, email, telefone) VALUES ('João Silva', 'joao@email.com', '44999990001');
INSERT INTO cliente (nome, email, telefone) VALUES ('Maria Santos', 'maria@email.com', '44999990002');
INSERT INTO cliente (nome, email, telefone) VALUES ('Pedro Oliveira', 'pedro@email.com', '44999990003');
INSERT INTO cliente (nome, email, telefone) VALUES ('Ana Souza', 'ana@email.com', '44999990004');
INSERT INTO cliente (nome, email, telefone) VALUES ('Carlos Lima', 'carlos@email.com', '44999990005');

-- 5 Pedidos
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-01 10:00:00', 'PAGO', 3500.00, 1);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-02 11:00:00', 'PAGO', 80.00, 2);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-03 12:00:00', 'PENDENTE', 1200.00, 3);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-04 13:00:00', 'PAGO', 250.00, 4);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES ('2026-09-05 14:00:00', 'PENDENTE', 100.00, 5);

-- 5 Itens de Pedido
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 3500.00, 1, 1);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 80.00, 2, 2);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 1200.00, 3, 3);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 250.00, 4, 4);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 100.00, 5, 5);

-- 5 Pagamentos
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (3500.00, '2026-09-01 10:05:00', 'APROVADO', 'PIX', 1);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (80.00, '2026-09-02 11:05:00', 'APROVADO', 'CARTAO', 2);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (1200.00, '2026-09-03 12:05:00', 'PENDENTE', 'BOLETO', 3);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (250.00, '2026-09-04 13:05:00', 'APROVADO', 'PIX', 4);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (100.00, '2026-09-05 14:05:00', 'PENDENTE', 'CARTAO', 5);