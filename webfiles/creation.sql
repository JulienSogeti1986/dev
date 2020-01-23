

CREATE TABLE `gares` (
  `id_gare` int(20) NOT NULL,
  `nom_gare` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `tgv` (
  `id_TGV` int(20) NOT NULL,
  `Date_depart` datetime NOT NULL,
  `Date_arrivee` datetime NOT NULL,
  `id_gare_depart` int(20) NOT NULL,
  `id_gare_arrivee` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



ALTER TABLE `gares`
  ADD PRIMARY KEY (`id_gare`);



ALTER TABLE `tgv`
  ADD PRIMARY KEY (`id_TGV`);


ALTER TABLE `tgv` ADD FOREIGN KEY (`id_gare_depart`) REFERENCES gares(`id_gare`);
ALTER TABLE `tgv` ADD FOREIGN KEY (`id_gare_arrivee`) REFERENCES gares(`id_gare`);

INSERT INTO `tgv` VALUES
( 1, '2020-01-01 07:00:00','2020-01-02 06:00:00', 10 , 20), 
( 2, '2020-11-12 17:00:00','2020-11-12 18:00:00', 30 , 10),
( 3, '2020-08-27 06:00:00','2020-08-27 11:00:00', 30 , 20),
( 4, '2020-02-25 11:00:00','2020-02-27 08:00:00', 40 , 50),
( 5, '2020-05-07 14:00:00','2020-05-08 07:00:00', 20 , 50);

INSERT INTO `gares` VALUES
(10,'Lyon'),
(20,'Chambery'),
(30,'Paris'),
(40,'Toulouse'),
(50,'Pau');





