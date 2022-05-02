-- hu
CREATE TABLE Player( 
	player_id int not null,
	tag Varchar(50), 
	real_name Varchar(100),
	nationality Varchar(2),
	birthday date,
	game_race Varchar(1),
	primary key(player_id)
);

CREATE TABLE Team(
	team_id int not null,
	team_name Varchar(100), 
	founded date,
	disbanded date,
	primary key(team_id)
);

CREATE TABLE Tournament(
	tournament_id int not null,
	tournament_name Varchar(100), 
	region Varchar(2),
	major boolean,
	primary key(tournament_id)
); 

CREATE TABLE Members(
	player_id int not null,
	team_id int not null,
	start_date date,
	end_date date,
	primary key(player_id, team_id), 
	foreign key(player_id) references Player(player_id),
	foreign key(team_id) references Team(team_id)
);

CREATE TABLE Matches(
	match_id int not null,
	match_date  date,
	tournament_id int not null,
	playerA_id int not null,
	playerB_id int not null,
	playerA_score int,
	playerB_score int, 
	off_line boolean,
	primary key(match_id),
	foreign key(playerA_id) references Player(player_id),
	foreign key(playerB_id) references Player(player_id),
	foreign key(tournament_id) references Tournament(tournament_id)
);

CREATE TABLE Earnings(
	tournament_id int not null,
	player_id int not null,
	prize_money int,
	position int,
	primary key(tournament_id, player_id),
	foreign key(tournament_id) references Tournament(tournament_id),
	foreign key(player_id) references Player(player_id)
);