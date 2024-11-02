SET search_path TO LearnExpress;

INSERT INTO categoria (id, descricao) VALUES
(1, 'Linguagens de Programação'),
(2, 'Desenvolvimento de Games'),
(3, 'Design');

INSERT INTO usuario (id, nome, email, senha) VALUES 
(1, 'Alice Silva', 'alice.silva@email.com', 'senha123'),
(2, 'Bruno Oliveira', 'bruno.oliveira@email.com', 'segredo456'),
(3, 'Carla Mendes', 'carla.mendes@email.com', 'carla789'),
(4, 'Daniel Souza', 'daniel.souza@email.com', 'danielpass'),
(5, 'Eliana Costa', 'eliana.costa@email.com', 'eliana1010'),
(6, 'Fernando Lima', 'fernando.lima@email.com', 'fernando111'),
(7, 'Gabriela Santos', 'gabriela.santos@email.com', 'gabi2020'),
(8, 'Henrique Alves', 'henrique.alves@email.com', 'henrique303'),
(9, 'Isabel Rocha', 'isabel.rocha@email.com', 'isabel404'),
(10, 'João Pereira', 'joao.pereira@email.com', 'joao505');

INSERT INTO curso (id, titulo, professor, descricao, horas_totais, preco) VALUES
(1, 'Python', 'João Silva', 'Curso completo de Python, cobrindo fundamentos e avançado', 40, 299.99),
(2, 'C#', 'Maria Oliveira', 'Aprenda C# do básico ao avançado', 50, 349.99),
(3, 'Fundamentos de Desenvolvimento de Games', 'Fernanda Lima', 'Introdução ao desenvolvimento de jogos, cobrindo bases teóricas', 45, 399.99),
(4, 'Unreal Engine', 'Ricardo Almeida', 'Criação de jogos com Unreal Engine', 55, 499.99),
(5, 'Web Design', 'Eduardo Ramos', 'Criação de interfaces web com foco em usabilidade e design', 40, 349.99),
(6, 'Design Gráfico', 'Juliana Castro', 'Curso de design gráfico com foco em branding e identidade visual', 50, 379.99);

INSERT INTO idCurso_Categoria (idCategoria, idCurso) VALUES
(1, 1), -- Python
(1, 2), -- C#
(2, 3), -- Fundamentos de Desenvolvimento de Games
(2, 4), -- Unreal Engine
(3, 5), -- Web Design
(3, 6); -- Design Gráfico

INSERT INTO pedido (id, idCurso, idUsuario, data) VALUES
(1, 1, 1, '2024-08-01'), -- Alice Silva compra Python
(2, 2, 1, '2024-08-02'), -- Alice Silva compra C#
(3, 3, 2, '2024-08-05'), -- Bruno Oliveira compra Fundamentos de Desenvolvimento de Games
(4, 4, 2, '2024-08-06'), -- Bruno Oliveira compra Unreal Engine
(5, 5, 3, '2024-08-07'), -- Carla Mendes compra Web Design
(6, 6, 4, '2024-08-10'), -- Daniel Souza compra Design Gráfico
(7, 1, 5, '2024-08-11'), -- Eliana Costa compra Python
(8, 2, 6, '2024-08-12'), -- Fernando Lima compra C#
(9, 3, 6, '2024-08-13'), -- Fernando Lima compra Fundamentos de Desenvolvimento de Games
(10, 4, 8, '2024-08-15'), -- Henrique Alves compra Unreal Engine
(11, 5, 9, '2024-08-16'), -- Isabel Rocha compra Web Design
(12, 6, 9, '2024-08-17'), -- Isabel Rocha compra Design Gráfico
(13, 1, 10, '2024-08-18'), -- João Pereira compra Python
(14, 2, 10, '2024-08-19'), -- João Pereira compra C#
(15, 3, 10, '2024-08-20'); -- João Pereira compra Fundamentos de Desenvolvimento de Games

INSERT INTO certificado (id, data_emissao, idUsuario, idCurso) VALUES
(1, '2024-10-01', 1, 1),
(2, '2024-10-02', 1, 2),
(3, '2024-10-05', 2, 3),
(4, '2024-10-06', 2, 4),
(5, '2024-10-07', 3, 5),
(6, '2024-10-10', 4, 6),
(7, '2024-10-11', 5, 1),
(8, '2024-10-12', 6, 2),
(9, '2024-10-13', 6, 3),
(10, '2024-10-15', 8, 4);

-- Aulas para o curso Python
INSERT INTO aula (id, titulo, descricao, duração, link, idCurso) VALUES
(1, 'Introdução ao Python', 'Fundamentos e configuração do ambiente Python', 60, 'http://example.com/python_intro', 1),
(2, 'Sintaxe e Estruturas de Dados', 'Aprenda sobre sintaxe básica e estruturas de dados', 90, 'http://example.com/python_syntax', 1),
(3, 'Programação Orientada a Objetos', 'Conceitos de POO aplicados em Python', 120, 'http://example.com/python_poo', 1);
-- Aulas para o curso C#
INSERT INTO aula (id, titulo, descricao, duração, link, idCurso) VALUES
(4, 'Introdução ao C#', 'Fundamentos e configuração do ambiente C#', 60, 'http://example.com/csharp_intro', 2),
(5, 'Sintaxe e Estruturas de Dados em C#', 'Aprenda sobre sintaxe básica e estruturas de dados em C#', 90, 'http://example.com/csharp_syntax', 2),
(6, 'Programação Orientada a Objetos em C#', 'Conceitos de POO aplicados em C#', 120, 'http://example.com/csharp_poo', 2);
-- Aulas para o curso Fundamentos de Desenvolvimento de Games
INSERT INTO aula (id, titulo, descricao, duração, link, idCurso) VALUES
(7, 'Introdução ao Desenvolvimento de Games', 'Fundamentos e conceitos básicos de desenvolvimento de jogos', 60, 'http://example.com/games_intro', 3),
(8, 'Design e Mecânicas de Jogos', 'Aprenda sobre design e mecânicas de jogos', 90, 'http://example.com/games_design', 3),
(9, 'Programação de Jogos', 'Programação básica para jogos, utilizando motores de jogo', 120, 'http://example.com/games_programming', 3);
-- Aulas para o curso Unreal Engine
INSERT INTO aula (id, titulo, descricao, duração, link, idCurso) VALUES
(10, 'Introdução ao Unreal Engine', 'Fundamentos e configuração do Unreal Engine', 60, 'http://example.com/unreal_intro', 4),
(11, 'Criação de Cenários e Ambientes', 'Aprenda a criar cenários e ambientes no Unreal Engine', 90, 'http://example.com/unreal_scenarios', 4),
(12, 'Programação de Jogabilidade', 'Programação e scripts para jogabilidade no Unreal Engine', 120, 'http://example.com/unreal_programming', 4);
-- Aulas para o curso Web Design
INSERT INTO aula (id, titulo, descricao, duração, link, idCurso) VALUES
(13, 'Introdução ao Web Design', 'Fundamentos e melhores práticas de design web', 60, 'http://example.com/webdesign_intro', 5),
(14, 'HTML e CSS', 'Aprenda a criar páginas web com HTML e CSS', 90, 'http://example.com/webdesign_html_css', 5),
(15, 'JavaScript para Web Design', 'Introdução ao uso de JavaScript para design web interativo', 120, 'http://example.com/webdesign_js', 5);
-- Aulas para o curso Design Gráfico
INSERT INTO aula (id, titulo, descricao, duração, link, idCurso) VALUES
(16, 'Introdução ao Design Gráfico', 'Fundamentos e princípios do design gráfico', 60, 'http://example.com/graphic_intro', 6),
(17, 'Ferramentas de Design Gráfico', 'Aprenda a utilizar as principais ferramentas de design gráfico', 90, 'http://example.com/graphic_tools', 6),
(18, 'Criação de Identidade Visual', 'Como criar uma identidade visual forte e coerente', 120, 'http://example.com/graphic_identity', 6);

INSERT INTO Material_complementar (id, link, Descricao, idAula, Tipo) VALUES
(1, 'http://example.com/python_exercicio1', 'Exercício sobre sintaxe básica', 2, 'Exercicio'),
(2, 'http://example.com/python_avaliacao1', 'Avaliação sobre conceitos de POO em Python', 3, 'Avaliacao'),
(3, 'http://example.com/csharp_exercicio1', 'Exercício sobre estruturas de dados em C#', 5, 'Exercicio'),
(4, 'http://example.com/csharp_avaliacao1', 'Avaliação sobre programação orientada a objetos em C#', 6, 'Avaliacao'),
(5, 'http://example.com/games_exercicio1', 'Exercício sobre design de jogos', 8, 'Exercicio'),
(6, 'http://example.com/games_avaliacao1', 'Avaliação sobre programação básica para jogos', 9, 'Avaliacao'),
(7, 'http://example.com/unreal_exercicio1', 'Exercício sobre criação de cenários no Unreal Engine', 11, 'Exercicio'),
(8, 'http://example.com/unreal_avaliacao1', 'Avaliação sobre programação de jogabilidade no Unreal Engine', 12, 'Avaliacao'),
(9, 'http://example.com/webdesign_exercicio1', 'Exercício sobre HTML e CSS', 14, 'Exercicio'),
(10, 'http://example.com/webdesign_avaliacao1', 'Avaliação sobre design web', 15, 'Avaliacao'),
(11, 'http://example.com/graphicdesign_exercicio1', 'Exercício sobre ferramentas de design gráfico', 17, 'Exercicio'),
(12, 'http://example.com/graphicdesign_avaliacao1', 'Avaliação sobre identidade visual e branding', 18, 'Avaliacao');

INSERT INTO Nota_Material_Complementar (Nota, idMaterial, idUsuario) VALUES 
(8, 2, 1),
(10, 4, 10),
(8, 4, 1),
(9, 6, 2), 
(9, 6, 6),
(8, 8, 8),
(10, 8, 2),
(7, 10, 3),
(9, 12, 9),
(8, 12, 4);

INSERT INTO Porcent_Conclu_Curso (Porcentagem, idCurso, idUsuario)
SELECT 100, idCurso, idUsuario
FROM certificado;