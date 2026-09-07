-- 5 Categorias
INSERT INTO categoria (nome, descricao) VALUES ('Tecnologia', 'Eventos relacionados à tecnologia');
INSERT INTO categoria (nome, descricao) VALUES ('Negócios', 'Eventos sobre negócios e empreendedorismo');
INSERT INTO categoria (nome, descricao) VALUES ('Educação', 'Eventos voltados para educação');
INSERT INTO categoria (nome, descricao) VALUES ('Saúde', 'Eventos relacionados à saúde');
INSERT INTO categoria (nome, descricao) VALUES ('Inovação', 'Eventos sobre inovação');

-- 5 Locais
INSERT INTO local (nome, endereco, capacidade) VALUES ('Auditório Central', 'Rua Principal, 100', 300);
INSERT INTO local (nome, endereco, capacidade) VALUES ('Centro de Eventos', 'Avenida Brasil, 500', 500);
INSERT INTO local (nome, endereco, capacidade) VALUES ('Sala de Conferências', 'Rua das Flores, 200', 150);
INSERT INTO local (nome, endereco, capacidade) VALUES ('Teatro Municipal', 'Avenida Paraná, 800', 400);
INSERT INTO local (nome, endereco, capacidade) VALUES ('Espaço Innovation', 'Rua da Inovação, 50', 200);

-- 5 Palestrantes
INSERT INTO palestrante (nome, mini_bio, email) VALUES ('Carlos Mendes', 'Especialista em tecnologia e desenvolvimento de software', 'carlos@email.com');
INSERT INTO palestrante (nome, mini_bio, email) VALUES ('Ana Oliveira', 'Empreendedora e consultora de negócios', 'ana@email.com');
INSERT INTO palestrante (nome, mini_bio, email) VALUES ('Pedro Santos', 'Professor e pesquisador na área de educação', 'pedro@email.com');
INSERT INTO palestrante (nome, mini_bio, email) VALUES ('Mariana Costa', 'Especialista em saúde e qualidade de vida', 'mariana@email.com');
INSERT INTO palestrante (nome, mini_bio, email) VALUES ('João Silva', 'Pesquisador e especialista em inovação', 'joao@email.com');

-- 5 Participantes
INSERT INTO participante (nome, email, telefone) VALUES ('Lucas Almeida', 'lucas@email.com', '44999991001');
INSERT INTO participante (nome, email, telefone) VALUES ('Fernanda Souza', 'fernanda@email.com', '44999991002');
INSERT INTO participante (nome, email, telefone) VALUES ('Rafael Lima', 'rafael@email.com', '44999991003');
INSERT INTO participante (nome, email, telefone) VALUES ('Juliana Santos', 'juliana@email.com', '44999991004');
INSERT INTO participante (nome, email, telefone) VALUES ('Bruno Oliveira', 'bruno@email.com', '44999991005');

-- 5 Eventos
INSERT INTO evento (nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES ('Tech Conference', 'Conferência sobre tecnologia', '2026-10-01 09:00:00', '2026-10-01 18:00:00', 300, 'ABERTO', 1, 1, 1);

INSERT INTO evento (nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES ('Empreendedorismo 2026', 'Evento sobre negócios e empreendedorismo', '2026-10-05 09:00:00', '2026-10-05 17:00:00', 500, 'ABERTO', 2, 2, 2);

INSERT INTO evento (nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES ('Educação do Futuro', 'Debates sobre novas formas de educação', '2026-10-10 10:00:00', '2026-10-10 16:00:00', 150, 'ABERTO', 3, 3, 3);

INSERT INTO evento (nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES ('Saúde e Bem-Estar', 'Palestras sobre saúde e qualidade de vida', '2026-10-15 09:00:00', '2026-10-15 17:00:00', 400, 'ABERTO', 4, 4, 4);

INSERT INTO evento (nome, descricao, data_inicio, data_fim, capacidade, status, categoria_id, local_id, palestrante_id)
VALUES ('Innovation Day', 'Encontro sobre inovação e tecnologia', '2026-10-20 09:00:00', '2026-10-20 18:00:00', 200, 'ABERTO', 5, 5, 5);

-- 5 Inscrições
INSERT INTO inscricao (data_inscricao, status, evento_id, participante_id)
VALUES ('2026-09-01 10:00:00', 'CONFIRMADA', 1, 1);

INSERT INTO inscricao (data_inscricao, status, evento_id, participante_id)
VALUES ('2026-09-02 11:00:00', 'CONFIRMADA', 2, 2);

INSERT INTO inscricao (data_inscricao, status, evento_id, participante_id)
VALUES ('2026-09-03 12:00:00', 'CONFIRMADA', 3, 3);

INSERT INTO inscricao (data_inscricao, status, evento_id, participante_id)
VALUES ('2026-09-04 13:00:00', 'PENDENTE', 4, 4);

INSERT INTO inscricao (data_inscricao, status, evento_id, participante_id)
VALUES ('2026-09-05 14:00:00', 'CONFIRMADA', 5, 5);