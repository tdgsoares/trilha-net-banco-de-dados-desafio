--- 1
Select Nome, Ano
	from Filmes

---2
Select Nome, Ano, Duracao
	from filmes
	order by Ano

--3
Select Nome, Ano, Duracao
	from filmes
	where Nome like '%Volta para o Futuro%'

--4
Select Nome, Ano, Duracao
	from filmes
	where ano = 1997

--5
Select Nome, Ano, Duracao
	from filmes
	where ano > 2000

--6
Select Nome, Ano, Duracao
	from filmes
	where Duracao > 100 and Duracao < 150
	order by Duracao

--7
Select Ano, count(Duracao) Quantidade
	from filmes
	group by Ano
	order by Quantidade desc

--8
Select Id, PrimeiroNome, UltimoNome,Genero
	from  Atores
	where genero='M'

--9
Select Id, PrimeiroNome, UltimoNome,Genero
	from  Atores
	where genero='F'
	order by PrimeiroNome

--10
Select f.Nome, g.Genero
	from Filmes f 
	inner join FilmesGenero fg on f.id= fg.IdFilme
	inner join Generos g on g.Id= fg.IdGenero

--11
Select f.Nome, g.Genero
	from Filmes f 
	inner join FilmesGenero fg on f.id= fg.IdFilme
	inner join Generos g on g.Id= fg.IdGenero where genero='Mistério'

--12
Select f.Nome,a.PrimeiroNome,a.UltimoNome,ef.Papel
	from Filmes f
	inner join ElencoFilme ef on f.Id=ef.IdFilme
	inner join Atores a on a.Id=ef.IdAtor
