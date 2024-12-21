INSERT INTO Clubes (id_Clubes, nome, cidade, ano_criacao, logo) VALUES
(1, 'Barcelona', 'Barcelona', '1899-11-29 00:00:00', NULL),
(2, 'Real Madrid', 'Madrid', '1902-03-06 00:00:00', NULL),
(3, 'Manchester United', 'Manchester', '1878-03-05 00:00:00', NULL),
(4, 'Bayern Munich', 'Munich', '1900-02-27 00:00:00', NULL),
(5, 'Juventus', 'Turim', '1897-11-01 00:00:00', NULL),
(6, 'Paris Saint-Germain', 'Paris', '1970-08-12 00:00:00', NULL);


INSERT INTO Jogadores (id_Jogadores, nome, nacionalidade, posicao, id_Clubes) VALUES
(1, 'Lionel Messi', 'Argentina', 'Atacante', 1),
(2, 'Karim Benzema', 'França', 'Atacante', 2),
(3, 'Bruno Fernandes', 'Portugal', 'Meio-campo', 3),
(4, 'Manuel Neuer', 'Alemanha', 'Goleiro', 4),
(5, 'Cristiano Ronaldo', 'Portugal', 'Atacante', 3),
(6, 'Kylian Mbappé', 'França', 'Atacante', 6),
(7, 'Robert Lewandowski', 'Polônia', 'Atacante', 4),
(8, 'Neymar Jr.', 'Brasil', 'Atacante', 6);


INSERT INTO Ligas (id_Ligas, nome, comeco_temporada, final_temporada) VALUES
(1, 'La Liga', '2024-08-01 00:00:00', '2025-05-15 00:00:00'),
(2, 'Premier League', '2024-08-10 00:00:00', '2025-05-25 00:00:00'),
(3, 'Bundesliga', '2024-08-18 00:00:00', '2025-05-20 00:00:00'),
(4, 'Serie A', '2024-08-20 00:00:00', '2025-05-22 00:00:00'),
(5, 'Ligue 1', '2024-08-15 00:00:00', '2025-05-18 00:00:00');


INSERT INTO Trofeus (id_Trofeus, nome_trofeu, data_conquista, nome_vencedor, id_Ligas) VALUES
(1, 'Campeão La Liga', '2023-05-20 00:00:00', 'Barcelona', 1),
(2, 'Campeão Premier League', '2023-05-22 00:00:00', 'Manchester City', 2),
(3, 'Campeão Bundesliga', '2023-05-18 00:00:00', 'Bayern Munich', 3),
(4, 'Campeão Serie A', '2023-05-21 00:00:00', 'Napoli', 4),
(5, 'Campeão Ligue 1', '2023-05-19 00:00:00', 'Paris Saint-Germain', 5),
(6, 'Artilheiro La Liga', '2023-05-20 00:00:00', 'Robert Lewandowski', 1),
(7, 'Melhor Jogador Premier League', '2023-05-22 00:00:00', 'Erling Haaland', 2);
