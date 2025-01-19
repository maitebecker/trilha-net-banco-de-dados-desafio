--1 - Buscar o nome e ano dos filmes
SELECT NOME, ANO FROM FILMES

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO FROM FILMES ORDER BY ANO

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * FROM FILMES WHERE NOME = 'De volta para o futuro'

--4 - Buscar os filmes lançados em 1997
SELECT * FROM FILMES WHERE ANO = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM FILMES WHERE ANO > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(*) QUANTIDADE FROM FILMES GROUP BY ANO
ORDER BY QUANTIDADE DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES WHERE GENERO = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES WHERE GENERO = 'F'
ORDER BY PRIMEIRONOME;

--10 - Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero FROM FILMES F
INNER JOIN FilmesGenero FG
ON FG.IdFilme = F.Id
INNER JOIN Generos G
ON G.Id = FG.IdGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero FROM FILMES F
INNER JOIN FilmesGenero FG
ON FG.IdFilme = F.Id
INNER JOIN Generos G
ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel]
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F
INNER JOIN ElencoFilme EF
ON EF.IdFilme = F.Id
INNER JOIN Atores A
ON A.Id = EF.IdAtor;