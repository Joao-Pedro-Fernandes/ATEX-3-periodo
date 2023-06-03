insert into responsavel values
(1, 'José Roberto', 'joseroro@gmail.com', '(35)988762319'),
(2, 'Ana Lucia', 'analulu@hotmail.com', '(35)984984678'),
(3, 'Maria Betina', 'maria1234@aluno.unifenas.br', '(35)998564738'),
(4, 'Luciana', 'lucianaaa245@yahoo.com', '(35)984782909'),
(5, 'Heloisa', 'helo@gmail.com', '(35)988722769'),
(6, 'Romeu Shakespeare', 'romeu&julieta@hotmail.com', ''),
(7, 'Raquel', '', '(35)38573478');

insert into crianca values
(1,"João Pedro",11,1,1,4,1,1),
(2,"Lucas",7,1,1,2,1,1),
(3,"João Marcelo",9,1,1,2,0,2),
(4,"Felipe",8,1,1,2,0,3),
(5,"Gabriel",7,1,1,4,0,4),
(6,"Maria",5,0,1,1,1,5),
(7,"Julia",11,1,1,3,0,6),
(8,"Ana",10,1,0,4,0,7);

insert into jogo_rede_social values
(1,"Roblox","https://web.roblox.com/home","jogo"),
(2,"Minecraft","https://www.minecraft.net/pt-pt","jogo"),
(3,"Free Fire","https://play.google.com/store/apps/details?id=com.dts.freefireth&hl=pt_BR","jogo"),
(4,"Stumble Guys","https://play.google.com/store/apps/details?id=com.kitkagames.fallbuddies&hl=en&gl=US","jogo"),
(5,"Subway Surfers","https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf&hl=en","jogo"),
(6,"YouTube","https://www.youtube.com/","rede social"),
(7,"TikTok","https://www.tiktok.com/","rede social");

insert into crianca_jogo_rede_social values
(1,2),
(1,3),
(1,1),
(2,8),
(2,5),
(2,6),
(3,7),
(3,6),
(3,5),
(4,4),
(4,3),
(4,1),
(5,1),
(5,4),
(5,5),
(6,6),
(6,5),
(6,3),
(7,2),
(7,1),
(7,5);

insert into outro_jogo_rede_social values
(1,"Instagram","rede social",1),
(2,"Terraria","jogo",2),
(3,"Valorant","jogo",3),
(4,"Facebook","rede social",4),
(5,"League of Legends","jogo",1),
(6,"Candy Crush","jogo",7),
(7,"Talking Angela","jogo",8);

#Mostra o nome das crianças e seus responsáveis
select c.nome,r.nome
from crianca c, responsavel r
where c.id_responsavel = r.id_responsavel;


#Mostra o nome dos jogos e seus respectivos jogadores
select c.nome,j.nome
from crianca c, crianca_jogo_rede_social cc, jogo_rede_social j 
where c.id_crianca = cc.id_crianca and cc.id_jogo_rede_social = j.id;