-- migrate:up
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `owner_id` varchar(11) NOT NULL,
  `category` int(11) DEFAULT 2,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `ccts` varchar(255) DEFAULT '',
  `wallpaper` int(4) DEFAULT 0,
  `floor` int(4) DEFAULT 0,
  `showname` tinyint(1) DEFAULT 1,
  `superusers` tinyint(1) DEFAULT 0,
  `accesstype` tinyint(3) DEFAULT 0,
  `password` varchar(255) DEFAULT '',
  `visitors_now` int(11) DEFAULT 0,
  `visitors_max` int(11) DEFAULT 25
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `rooms` (`id`, `owner_id`, `category`, `name`, `description`, `model`, `ccts`, `wallpaper`, `floor`, `showname`, `superusers`, `accesstype`, `password`, `visitors_now`, `visitors_max`) VALUES
(1001, '0', 3, 'Welcome Lounge', 'welcome_lounge', 'newbie_lobby', 'hh_room_nlobby', 0, 0, 0, 0, 0, '', 0, 40),
(1003, '0', 3, 'Theatredome', 'theatredrome', 'theater', 'hh_room_theater', 0, 0, 0, 0, 0, '', 0, 100),
(1004, '0', 3, 'Library', 'library', 'library', 'hh_room_library', 0, 0, 0, 0, 0, '', 0, 30),
(1005, '0', 5, 'TV Studio', 'tv_studio', 'tv_studio', 'hh_room_tv_studio_general', 0, 0, 0, 0, 0, '', 0, 20),
(1006, '0', 5, 'Cinema', 'habbo_cinema', 'cinema_a', 'hh_room_cinema', 0, 0, 0, 0, 0, '', 0, 50),
(1007, '0', 5, 'Power Gym', 'sport', 'sport', 'hh_room_sport', 0, 0, 0, 0, 0, '', 0, 35),
(1008, '0', 5, 'Olympic Stadium', 'ballroom', 'ballroom', 'hh_room_ballroom', 0, 0, 0, 0, 0, '', 0, 50),
(1009, '0', 5, 'Habbo Kitchen', 'hotel_kitchen', 'cr_kitchen', 'hh_room_kitchen', 0, 0, 0, 0, 0, '', 0, 20),
(1010, '0', 6, 'The Dirty Duck Pub', 'the_dirty_duck_pub', 'pub_a', 'hh_room_pub', 0, 0, 0, 0, 0, '', 0, 40),
(1011, '0', 6, 'Cafe Ole', 'cafe_ole', 'cafe_ole', 'hh_room_cafe', 0, 0, 0, 0, 0, '', 0, 35),
(1012, '0', 6, 'Gallery Cafe', 'eric\'s_eaterie', 'cr_cafe', 'hh_room_erics', 0, 0, 0, 0, 0, '', 0, 35),
(1013, '0', 6, 'Space Cafe', 'space_cafe', 'space_cafe', 'hh_room_space_cafe', 0, 0, 0, 0, 0, '', 0, 35),
(1014, '0', 7, 'Rooftop Terrace', 'rooftop', 'rooftop', 'hh_room_rooftop', 0, 0, 0, 0, 0, '', 0, 30),
(1015, '0', 7, 'Rooftop Cafe', 'rooftop', 'rooftop_2', 'hh_room_rooftop', 0, 0, 0, 0, 0, '', 0, 20),
(1016, '0', 6, 'Palazzo Pizza', 'pizza', 'pizza', 'hh_room_pizza', 0, 0, 0, 0, 0, '', 0, 40),
(1017, '0', 6, 'Habburgers', 'habburger\'s', 'habburger', 'hh_room_habburger', 0, 0, 0, 0, 0, '', 0, 40),
(1018, '0', 8, 'Grandfathers Lounge', 'dusty_lounge', 'dusty_lounge', 'hh_room_dustylounge', 0, 0, 0, 0, 0, '', 0, 45),
(1019, '0', 7, 'Oriental Tearoom', 'tearoom', 'tearoom', 'hh_room_tearoom', 0, 0, 0, 0, 0, '', 0, 40),
(1020, '0', 7, 'Oldskool Lounge', 'old_skool', 'old_skool0', 'hh_room_old_skool', 0, 0, 0, 0, 0, '', 0, 45),
(1022, '0', 7, 'Oldskool Dancefloor', 'old_skool', 'old_skool1', 'hh_room_old_skool', 0, 0, 0, 0, 0, '', 0, 45),
(1023, '0', 7, 'The Chromide Club', 'the_chromide_club', 'malja_bar_a', 'hh_room_disco', 0, 0, 0, 0, 0, '', 0, 45),
(1024, '0', 7, 'The Chromide Club II', 'the_chromide_club', 'malja_bar_b', 'hh_room_disco', 0, 0, 0, 0, 0, '', 0, 50),
(1025, '0', 7, 'Club Massiva', 'club_massiva', 'bar_a', 'hh_room_bar', 0, 0, 0, 0, 0, '', 0, 45),
(1026, '0', 7, 'Club Massiva II', 'club_massiva2', 'bar_b', 'hh_room_bar', 0, 0, 0, 0, 0, '', 0, 70),
(1027, '0', 6, 'Sunset Cafe', 'sunset_cafe', 'sunset_cafe', 'hh_room_sunsetcafe', 0, 0, 0, 0, 0, '', 0, 35),
(1028, '0', 7, 'Oasis Spa', 'cafe_gold', 'cafe_gold0', 'hh_room_gold', 0, 0, 0, 0, 0, '', 0, 50),
(1029, '0', 9, 'Treehugger Garden', 'chill', 'chill', 'hh_room_chill', 0, 0, 0, 0, 0, '', 0, 30),
(1030, '0', 8, 'Club Mammoth', 'club_mammoth', 'club_mammoth', 'hh_room_clubmammoth', 0, 0, 0, 0, 0, '', 0, 45),
(1031, '0', 9, 'Floating Garden', 'floatinggarden', 'floatinggarden', 'hh_room_floatinggarden', 0, 0, 0, 0, 0, '', 0, 80),
(1032, '0', 9, 'Picnic Fields', 'picnic', 'picnic', 'hh_room_picnic', 0, 0, 0, 0, 0, '', 0, 55),
(1033, '0', 9, 'Sun Terrace', 'sun_terrace', 'sun_terrace', 'hh_room_sun_terrace', 0, 0, 0, 0, 0, '', 0, 50),
(1034, '0', 20, 'The Laughing Lions - Gate', 'gate_park', 'gate_park', 'hh_room_gate_park', 0, 0, 0, 0, 0, '', 0, 50),
(1035, '0', 20, 'The Laughing Lions - Picnic', 'gate_park', 'gate_park_2', 'hh_room_gate_park', 0, 0, 0, 0, 0, '', 0, 50),
(1036, '0', 21, 'The Park', 'park', 'park_a', 'hh_room_park_general,hh_room_park', 0, 0, 0, 0, 0, '', 0, 45),
(1037, '0', 21, 'The Infobus', 'park', 'park_b', 'hh_room_park_general,hh_room_park', 0, 0, 0, 0, 0, '', 0, 20),
(1038, '0', 10, 'Habbo Lido', 'habbo_lido', 'pool_a', 'hh_room_pool,hh_people_pool', 0, 0, 0, 0, 0, '', 0, 60),
(1039, '0', 10, 'Lido B', 'habbo_lido_ii', 'pool_b', 'hh_room_pool,hh_people_pool', 0, 0, 0, 0, 0, '', 0, 60),
(1040, '0', 10, 'Rooftop Rumble', 'rooftop_rumble', 'md_a', 'hh_room_terrace,hh_paalu,hh_people_pool,hh_people_paalu', 0, 0, 0, 0, 0, '', 0, 50),
(1041, '0', 11, 'Main Lobby', 'main_lobby', 'lobby_a', 'hh_room_lobby', 0, 0, 0, 0, 0, '', 0, 100),
(1042, '0', 11, 'Basement Lobby', 'basement_lobby', 'floorlobby_a', 'hh_room_floorlobbies', 0, 0, 0, 0, 0, '', 0, 50),
(1043, '0', 11, 'Median Lobby', 'median_lobby', 'floorlobby_b', 'hh_room_floorlobbies', 0, 0, 0, 0, 0, '', 0, 50),
(1044, '0', 11, 'Skylight Lobby', 'skylight_lobby', 'floorlobby_c', 'hh_room_floorlobbies', 0, 0, 0, 0, 0, '', 0, 50),
(1045, '0', 6, 'Ice Cafe', 'ice_cafe', 'ice_cafe', 'hh_room_icecafe', 0, 0, 0, 0, 0, '', 0, 25),
(1046, '0', 6, 'Net Cafe', 'netcafe', 'netcafe', 'hh_room_netcafe', 0, 0, 0, 0, 0, '', 0, 25),
(1047, '0', 5, 'Beauty Salon', 'beauty_salon_loreal', 'beauty_salon0', 'hh_room_beauty_salon_general', 0, 0, 0, 0, 0, '', 0, 25),
(1048, '0', 5, 'The Den', 'the_den', 'cr_staff', 'hh_room_den', 0, 0, 0, 0, 0, '', 0, 100),
(1049, '0', 12, 'Lower Hallways', 'hallway', 'hallway2', 'hh_room_hallway', 0, 0, 1, 0, 0, '', 0, 25),
(1050, '0', 12, 'Lower Hallways I', 'hallway', 'hallway0', 'hh_room_hallway', 0, 0, 1, 0, 0, '', 0, 25),
(1051, '0', 12, 'Lower Hallways II', 'hallway', 'hallway1', 'hh_room_hallway', 0, 0, 1, 0, 0, '', 0, 25),
(1052, '0', 12, 'Lower Hallways III', 'hallway', 'hallway3', 'hh_room_hallway', 0, 0, 1, 0, 0, '', 0, 25),
(1053, '0', 12, 'Lower Hallways IV', 'hallway', 'hallway5', 'hh_room_hallway', 0, 0, 1, 0, 0, '', 0, 25),
(1054, '0', 12, 'Lower Hallways V', 'hallway', 'hallway4', 'hh_room_hallway', 0, 0, 1, 0, 0, '', 0, 25),
(1055, '0', 12, 'Upper Hallways', 'hallway_ii', 'hallway9', 'hh_room_hallway', 0, 0, 1, 0, 0, '', 0, 25);

-- migrate:down
DROP TABLE `rooms`;
