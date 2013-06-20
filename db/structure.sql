CREATE TABLE `admin_tools_dashboard_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `dashboard_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_tools_dashboard_preferences_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

CREATE TABLE `admin_tools_menu_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_tools_menu_bookmark_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert2_advert2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `cityarea_id` int(11) DEFAULT NULL,
  `street_id` int(11) DEFAULT NULL,
  `housenumber` varchar(32) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `housematerial_id` int(11) DEFAULT NULL,
  `floors` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `publication_date` date NOT NULL,
  `viewcount` int(10) unsigned DEFAULT NULL,
  `planning` varchar(256) DEFAULT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `rooms_from` int(11) DEFAULT NULL,
  `cost_to` decimal(20,0) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `mainphoto` varchar(256) DEFAULT NULL,
  `cost_from` decimal(20,0) DEFAULT NULL,
  `rooms_to` int(11) DEFAULT NULL,
  `realtype_id` int(11) DEFAULT NULL,
  `text` longtext,
  `mapaddress` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `advert2_advert2_586a73b5` (`city_id`),
  KEY `advert2_advert2_f5b9186e` (`cityarea_id`),
  KEY `advert2_advert2_539ecf1b` (`street_id`),
  KEY `advert2_advert2_41f657b3` (`currency_id`),
  KEY `advert2_advert2_c3c793e2` (`housematerial_id`),
  KEY `advert2_advert2_company_id_idx` (`company_id`),
  KEY `advert2_advert2_realtype_id_idx` (`realtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `advert2_advert2_advoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert2_id` int(11) NOT NULL,
  `advoptions2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advert2_id` (`advert2_id`,`advoptions2_id`),
  KEY `advert2_advert2_advoptions_5cd71429` (`advert2_id`),
  KEY `advert2_advert2_advoptions_a1cdaa6c` (`advoptions2_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE `advert2_advert2_dopoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert2_id` int(11) NOT NULL,
  `dopoptions2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advert2_id` (`advert2_id`,`dopoptions2_id`),
  KEY `advert2_advert2_dopoptions_5cd71429` (`advert2_id`),
  KEY `advert2_advert2_dopoptions_941dd7de` (`dopoptions2_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert2_advoptions2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `advert2_apartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `floorinfo_id` int(11) DEFAULT NULL,
  `rooms` int(11) NOT NULL,
  `square` double NOT NULL,
  `planning` varchar(256) DEFAULT NULL,
  `cost` decimal(20,0) DEFAULT NULL,
  `usercurrency_id` int(11) DEFAULT NULL,
  `costforall` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert2_apartment_dbc21818` (`advert_id`),
  KEY `advert2_apartment_2c105bc3` (`floorinfo_id`),
  KEY `advert2_apartment_usercurrency_id_idx` (`usercurrency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `advert2_dopoptions2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert2_floorinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `floor` int(11) NOT NULL,
  `planning` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert2_floorinfo_dbc21818` (`advert_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `advert2_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert2_photo_dbc21818` (`advert_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `advert2_photo2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert2_photo2_dbc21818` (`advert_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_advert3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `cityarea_id` int(11) DEFAULT NULL,
  `housematerial_id` int(11) DEFAULT NULL,
  `floors` int(11) NOT NULL,
  `startdate` date DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `publication_date` date NOT NULL,
  `viewcount` int(10) unsigned DEFAULT NULL,
  `planning` varchar(256) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `rooms_from` int(11) DEFAULT NULL,
  `cost_to` decimal(20,0) DEFAULT NULL,
  `realtype_id` int(11) DEFAULT NULL,
  `text` longtext,
  `currency_id` int(11) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `mainphoto` varchar(256) DEFAULT NULL,
  `street_id` int(11) DEFAULT NULL,
  `cost_from` decimal(20,0) DEFAULT NULL,
  `housenumber` varchar(32) DEFAULT NULL,
  `rooms_to` int(11) DEFAULT NULL,
  `mapaddress` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `advert3_advert3_586a73b5` (`city_id`),
  KEY `advert3_advert3_f5b9186e` (`cityarea_id`),
  KEY `advert3_advert3_c3c793e2` (`housematerial_id`),
  KEY `advert3_advert3_realtype_id_idx` (`realtype_id`),
  KEY `advert3_advert3_street_id_idx` (`street_id`),
  KEY `advert3_advert3_currency_id_idx` (`currency_id`),
  KEY `advert3_advert3_company_id_idx` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_advert3_advoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert3_id` int(11) NOT NULL,
  `advoptions3_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advert3_id` (`advert3_id`,`advoptions3_id`),
  KEY `advert3_advert3_advoptions_393ac892` (`advert3_id`),
  KEY `advert3_advert3_advoptions_e4849ac9` (`advoptions3_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_advert3_dopoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert3_id` int(11) NOT NULL,
  `dopoptions3_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advert3_id` (`advert3_id`,`dopoptions3_id`),
  KEY `advert3_advert3_dopoptions_393ac892` (`advert3_id`),
  KEY `advert3_advert3_dopoptions_faaf7f87` (`dopoptions3_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_advoptions3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_dopoptions3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `floor` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `square` double NOT NULL,
  `planning` varchar(256) NOT NULL,
  `cost` decimal(20,0) DEFAULT NULL,
  `usercurrency_id` int(11) DEFAULT NULL,
  `costforall` decimal(20,0) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert3_house_dbc21818` (`advert_id`),
  KEY `advert3_house_usercurrency_id_idx` (`usercurrency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert3_photo_dbc21818` (`advert_id`),
  KEY `advert3_photo_1519731` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_photo3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert3_photo3_dbc21818` (`advert_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert3_photohouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert3_photohouse_1519731` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert_advcontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realtype_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `cityarea_id` int(11) DEFAULT NULL,
  `street_id` int(11) DEFAULT NULL,
  `housenumber` varchar(32) DEFAULT NULL,
  `housematerial_id` int(11) DEFAULT NULL,
  `housetype_id` int(11) DEFAULT NULL,
  `rooms` int(11) NOT NULL,
  `roomstype_id` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `floors` int(11) NOT NULL,
  `trassadirection_id` int(11) DEFAULT NULL,
  `landpurpose_id` int(11) DEFAULT NULL,
  `landsize` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desciption` longtext NOT NULL,
  `square` decimal(20,2) DEFAULT NULL,
  `squarelife` decimal(20,2) DEFAULT NULL,
  `kitchen` decimal(20,2) DEFAULT NULL,
  `home_deadline` varchar(128) DEFAULT NULL,
  `free_from` varchar(128) DEFAULT NULL,
  `floor_type_id` int(11) DEFAULT NULL,
  `wc_count` int(11) DEFAULT NULL,
  `stateofrepair_id` int(11) DEFAULT NULL,
  `ceill_height` decimal(20,2) DEFAULT NULL,
  `distance` varchar(128) DEFAULT NULL,
  `hotadv` tinyint(1) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `costforall` decimal(20,0) DEFAULT NULL,
  `usercost` decimal(20,2) DEFAULT NULL,
  `usercostforall` decimal(20,0) DEFAULT NULL,
  `usercurrency_id` int(11) NOT NULL,
  `publication_date` date NOT NULL,
  `viewcount` int(10) unsigned DEFAULT NULL,
  `metro_id` int(11) DEFAULT NULL,
  `door_id` int(11) DEFAULT NULL,
  `term_accommodation_id` int(11) DEFAULT NULL,
  `typeoffund_id` int(11) DEFAULT NULL,
  `locationofproperty_id` int(11) DEFAULT NULL,
  `businesscenterclass_id` int(11) DEFAULT NULL,
  `separateentrance_id` int(11) DEFAULT NULL,
  `cabinetcount` varchar(256) DEFAULT NULL,
  `bussinesperiod_id` int(11) DEFAULT NULL,
  `planning` varchar(256) DEFAULT NULL,
  `poster` varchar(256) DEFAULT NULL,
  `contact_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `torg` tinyint(1) DEFAULT NULL,
  `free_to` varchar(128) DEFAULT NULL,
  `operationtype_id` int(11) DEFAULT NULL,
  `comissionvalue` decimal(20,2) DEFAULT NULL,
  `flattypeid_id` int(11) DEFAULT '0',
  `video` varchar(512) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `countryarea_id` int(11) DEFAULT NULL,
  `mapaddress` longtext,
  `youtube` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `advert_advert_69f47248` (`realtype_id`),
  KEY `advert_advert_586a73b5` (`city_id`),
  KEY `advert_advert_f5b9186e` (`cityarea_id`),
  KEY `advert_advert_539ecf1b` (`street_id`),
  KEY `advert_advert_c3c793e2` (`housematerial_id`),
  KEY `advert_advert_74f537b` (`housetype_id`),
  KEY `advert_advert_81d86207` (`roomstype_id`),
  KEY `advert_advert_77ccd16a` (`trassadirection_id`),
  KEY `advert_advert_6dd97b3c` (`landpurpose_id`),
  KEY `advert_advert_9ae7575d` (`floor_type_id`),
  KEY `advert_advert_43141872` (`stateofrepair_id`),
  KEY `advert_advert_1b488ba8` (`usercurrency_id`),
  KEY `advert_advert_dcc3cfa6` (`metro_id`),
  KEY `advert_advert_961fddf0` (`door_id`),
  KEY `advert_advert_fb43b1b` (`term_accommodation_id`),
  KEY `advert_advert_1326b494` (`typeoffund_id`),
  KEY `advert_advert_cf7cb121` (`locationofproperty_id`),
  KEY `advert_advert_b3427504` (`businesscenterclass_id`),
  KEY `advert_advert_27bfdc8b` (`separateentrance_id`),
  KEY `advert_advert_7e3148ef` (`bussinesperiod_id`),
  KEY `advert_advert_170b8823` (`contact_id`),
  KEY `advert_advert_fbfc09f1` (`user_id`),
  KEY `advert_advert_1d21b276` (`operationtype_id`),
  KEY `advert_advert_flattypeid_id_idx` (`flattypeid_id`),
  KEY `advert_advert_countryarea_id_idx` (`countryarea_id`)
) ENGINE=MyISAM AUTO_INCREMENT=476 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_advert_advoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) NOT NULL,
  `advoptions_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advert_id` (`advert_id`,`advoptions_id`),
  KEY `advert_advert_advoptions_dbc21818` (`advert_id`),
  KEY `advert_advert_advoptions_59b47a03` (`advoptions_id`)
) ENGINE=MyISAM AUTO_INCREMENT=382 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_advert_dopoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) NOT NULL,
  `dopoptions_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advert_advert_dopoptions_advert_id_755af557e353cae2_uniq` (`advert_id`,`dopoptions_id`),
  KEY `advert_advert_dopoptions_dbc21818` (`advert_id`),
  KEY `advert_advert_dopoptions_92d83537` (`dopoptions_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_advert_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `advert_id` (`advert_id`,`photo_id`),
  KEY `advert_advert_photos_dbc21818` (`advert_id`),
  KEY `advert_advert_photos_7c6c8bb1` (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert_advoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `realtype_id` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_advoptions_realtype_id_idx` (`realtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_arendabusinessperiod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_businesscenterclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_city_dfd0e917` (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_cityarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cityid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_cityarea_a3ca7998` (`cityid_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_comisiontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_contactadvert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `advert_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_contactadvert_7c6c8bb1` (`photo_id`),
  KEY `advert_contactadvert_dbc21818` (`advert_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert_contactinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(128) DEFAULT NULL,
  `tel` varchar(128) DEFAULT NULL,
  `tel2` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `skype` varchar(128) DEFAULT NULL,
  `logocompany` varchar(100) DEFAULT NULL,
  `accounttype_id` int(11) NOT NULL,
  `comision_id` int(11) NOT NULL,
  `comissionvalue` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_contactinfo_86d2685e` (`accounttype_id`),
  KEY `advert_contactinfo_14820911` (`comision_id`)
) ENGINE=MyISAM AUTO_INCREMENT=489 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_contacttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_countryarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_doortype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_dopoptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `realtype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_dopoptions_realtype_id_idx` (`realtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_flattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_floortype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_housematerial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `realtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_housetype_realtype_id_idx` (`realtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_landpurpose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_locationofproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_metro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_metro_586a73b5` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_operationtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) DEFAULT NULL,
  `advert_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_photo_advert_id_idx` (`advert_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9988 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_photoadvert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `advert_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_photoadvert_7c6c8bb1` (`photo_id`),
  KEY `advert_photoadvert_dbc21818` (`advert_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert_photoposter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) DEFAULT NULL,
  `planing` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_photoposter_dbc21818` (`advert_id`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_realtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_realtype_d245265f` (`subtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_realtype2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_roomtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_separateentrance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_stateofrepair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_street` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cityid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_street_a3ca7998` (`cityid_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30540 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` longtext NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `advert_termaccommodation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_trassadirection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_typeoffund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_usercart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `advert_id` int(11) NOT NULL,
  `session_key` longtext,
  PRIMARY KEY (`id`),
  KEY `advert_usercart_fbfc09f1` (`user_id`),
  KEY `advert_usercart_dbc21818` (`advert_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3887 DEFAULT CHARSET=utf8;

CREATE TABLE `advert_youtube` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_id` int(11) DEFAULT NULL,
  `video` longtext,
  PRIMARY KEY (`id`),
  KEY `advert_youtube_f1d84fd4` (`adv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=937 DEFAULT CHARSET=utf8;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=334 DEFAULT CHARSET=utf8;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_c91f1bf` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_c91f1bf` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `company_companycategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `newslug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newslug` (`newslug`),
  KEY `company_companycategory_newslug_idx` (`newslug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `company_companyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `tel` varchar(128) DEFAULT NULL,
  `fax` varchar(128) DEFAULT NULL,
  `mobile` varchar(128) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `siteurl` varchar(200) DEFAULT NULL,
  `sitename` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `photo2` varchar(128) DEFAULT NULL,
  `photo3` varchar(128) DEFAULT NULL,
  `photo4` varchar(128) DEFAULT NULL,
  `photo5` varchar(128) DEFAULT NULL,
  `shortdescription` varchar(128) DEFAULT NULL,
  `fulldescription` longtext NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_companyinfo_42dc49bc` (`category_id`),
  KEY `company_companyinfo_slug_idx` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1652 DEFAULT CHARSET=utf8;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

CREATE TABLE `django_flatpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_flatpage_a4b49ab` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `django_flatpage_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flatpage_id` (`flatpage_id`,`site_id`),
  KEY `django_flatpage_sites_dedefef8` (`flatpage_id`),
  KEY `django_flatpage_sites_6223029` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictask_17d2d99d` (`interval_id`),
  KEY `djcelery_periodictask_7aa5fda` (`crontab_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_355bfc27` (`state`),
  KEY `djcelery_taskstate_52094d6e` (`name`),
  KEY `djcelery_taskstate_f0ba6500` (`tstamp`),
  KEY `djcelery_taskstate_20fc5b84` (`worker_id`),
  KEY `djcelery_taskstate_c91f1bf` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_eb8ac7e4` (`last_heartbeat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_hash` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_3a997c55` (`storage_hash`),
  KEY `easy_thumbnails_source_52094d6e` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3859 DEFAULT CHARSET=utf8;

CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_hash` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thumbnail_3a997c55` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_52094d6e` (`name`),
  KEY `easy_thumbnails_thumbnail_89f89e85` (`source_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3959 DEFAULT CHARSET=utf8;

CREATE TABLE `feedback_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `text` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request` longtext NOT NULL,
  `created` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_feedback_6223029` (`site_id`),
  KEY `feedback_feedback_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

CREATE TABLE `flatblocks_flatblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

CREATE TABLE `iBanners_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `banner_type` varchar(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `foreign_url` varchar(200) NOT NULL,
  `width` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `clicks` int(10) unsigned NOT NULL,
  `shows` int(10) unsigned NOT NULL,
  `max_clicks` int(10) unsigned NOT NULL,
  `max_shows` int(10) unsigned NOT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `swf_file` varchar(100) DEFAULT NULL,
  `img_file` varchar(100) DEFAULT NULL,
  `alt` varchar(100) NOT NULL,
  `comment` longtext NOT NULL,
  `html_text` longtext NOT NULL,
  `var` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iBanners_banner_8fd46b1a` (`campaign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

CREATE TABLE `iBanners_banner_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `banner_id` (`banner_id`,`zone_id`),
  KEY `iBanners_banner_zones_50ab1ff4` (`banner_id`),
  KEY `iBanners_banner_zones_2957a812` (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

CREATE TABLE `iBanners_campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iBanners_campaign_4a4e8ffb` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `iBanners_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `one_banner_per_page` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `iBanners_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `html_after_banner` varchar(255) NOT NULL,
  `html_pre_banner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iBanners_zone_6223029` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE `interkassa_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ik_shop_id` varchar(255) NOT NULL,
  `ik_success_url` varchar(255) NOT NULL,
  `ik_success_method` varchar(255) NOT NULL,
  `ik_fail_url` varchar(255) NOT NULL,
  `ik_fail_method` varchar(255) NOT NULL,
  `ik_status_url` varchar(255) NOT NULL,
  `ik_status_method` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `interkassa_interkassalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ik_user_id_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `ik_payment_amount` varchar(100) NOT NULL,
  `ik_payment_id` int(11) NOT NULL,
  `ik_payment_desc` varchar(255) NOT NULL,
  `ik_paysystem_alias` varchar(255) NOT NULL,
  `ik_payment_timestamp` int(11) NOT NULL,
  `ik_baggage_fields` varchar(255) NOT NULL,
  `ik_payment_state` varchar(255) NOT NULL,
  `ik_trans_id` varchar(255) NOT NULL,
  `ik_currency_exch` double NOT NULL,
  `ik_fees_payer` int(11) NOT NULL,
  `ik_sign_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ik_payment_id` (`ik_payment_id`),
  KEY `interkassa_interkassalog_2c8174c` (`ik_user_id_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `office_costtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `office_emessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_from` varchar(128) DEFAULT NULL,
  `email_to` varchar(128) DEFAULT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `body` longtext NOT NULL,
  `created` datetime NOT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `readed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `office_filearchive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(128) DEFAULT NULL,
  `docfile` varchar(100) DEFAULT NULL,
  `folder_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `office_filearchive_folder_id_idx` (`folder_id`),
  KEY `office_filearchive_owner_id_idx` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `office_folderarchive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `office_folderarchive_parent_id_idx` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `office_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_from_id` int(11) NOT NULL,
  `user_to_id` int(11) NOT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `body` longtext NOT NULL,
  `created` datetime NOT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `readed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_from_id_refs_id_84e19b12` (`user_from_id`),
  KEY `user_to_id_refs_id_84e19b12` (`user_to_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `office_messagefolder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `office_objectcost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) NOT NULL,
  `cost_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `summa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_id_refs_id_3ec97f3d` (`advert_id`),
  KEY `cost_id_refs_id_ec6b87f2` (`cost_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `office_objectpayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `summa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `advert_id_refs_id_6e64c25f` (`advert_id`),
  KEY `payment_id_refs_id_d6ad879c` (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `office_officecontactinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `fio` varchar(128) DEFAULT NULL,
  `tel` varchar(128) DEFAULT NULL,
  `tel2` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `skype` varchar(128) DEFAULT NULL,
  `logocompany` varchar(100) DEFAULT NULL,
  `accounttype_id` int(11) NOT NULL,
  `comision_id` int(11) NOT NULL,
  `comissionvalue` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id_refs_id_19ce67b` (`owner_id`),
  KEY `accounttype_id_refs_id_6c8ed493` (`accounttype_id`),
  KEY `comision_id_refs_id_f3cceca1` (`comision_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `office_paymenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `office_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `description` longtext NOT NULL,
  `owner_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `percenttask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id_refs_id_811271bc` (`owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `office_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `description` longtext NOT NULL,
  `project_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `date_end` date NOT NULL,
  `state_id` int(11) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `terminate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id_refs_id_86da8788` (`project_id`),
  KEY `state_id_refs_id_3fccf711` (`state_id`),
  KEY `worker_id_refs_id_b8f8b3a1` (`worker_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `office_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `people_customuser` (
  `user_ptr_id` int(11) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `middlename` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `birthday` date NOT NULL,
  `tel` varchar(128) NOT NULL,
  `skype` varchar(128) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `logocompany` varchar(100) NOT NULL,
  `accounttype` int(11) NOT NULL,
  `companyname` varchar(128) NOT NULL,
  `region` varchar(128) NOT NULL,
  `cityarea` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `optionalinfo` longtext NOT NULL,
  PRIMARY KEY (`user_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `people_peopleinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(128) DEFAULT NULL,
  `middlename` varchar(128) DEFAULT NULL,
  `lastname` varchar(128) DEFAULT NULL,
  `birthday` date NOT NULL,
  `tel` varchar(128) DEFAULT NULL,
  `skype` varchar(128) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `logocompany` varchar(100) DEFAULT NULL,
  `accounttype` int(11) NOT NULL,
  `companyname` varchar(128) DEFAULT NULL,
  `region` varchar(128) DEFAULT NULL,
  `cityarea` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `optionalinfo` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `people_peopleinfo_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `people_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(128) DEFAULT NULL,
  `middlename` varchar(128) DEFAULT NULL,
  `lastname` varchar(128) DEFAULT NULL,
  `birthday` date NOT NULL DEFAULT '2011-12-04',
  `tel` varchar(128) DEFAULT NULL,
  `skype` varchar(128) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `logocompany` varchar(100) DEFAULT NULL,
  `accounttype` int(11) NOT NULL DEFAULT '1',
  `companyname` varchar(128) DEFAULT NULL,
  `region` varchar(128) DEFAULT NULL,
  `cityarea` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `optionalinfo` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_id_2` (`user_id`),
  KEY `people_userprofile_fbfc09f1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

CREATE TABLE `pmessage_personalmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_from_id` int(11) NOT NULL,
  `user_to_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `message` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `pm_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pmessage_personalmessage_ef62eb6b` (`user_from_id`),
  KEY `pmessage_personalmessage_7a9b7d94` (`user_to_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `quickpages_quickpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `javascript` varchar(300) NOT NULL,
  `css` varchar(300) NOT NULL,
  `heading` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `keywords` longtext NOT NULL,
  `comments` longtext NOT NULL,
  `content` longtext NOT NULL,
  `template` varchar(100) NOT NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

CREATE TABLE `robokassa_successnotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `InvId` int(11) NOT NULL,
  `OutSum` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `robokassa_successnotification_8717ac18` (`InvId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `sitenews_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE `sitenews_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `excerpt` longtext NOT NULL,
  `body` longtext NOT NULL,
  `pub_date` datetime NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `excerpt_html` longtext NOT NULL,
  `body_html` longtext NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `picture1` varchar(100) DEFAULT NULL,
  `picture2` varchar(100) DEFAULT NULL,
  `picture3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sitenews_news_a951d5d6` (`slug`),
  KEY `sitenews_news_cc846901` (`author_id`),
  KEY `sitenews_news_9bfa5f2e` (`categories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=358 DEFAULT CHARSET=utf8;

CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `streets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30496 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_id` (`tag_id`,`content_type_id`,`object_id`),
  KEY `tagging_taggeditem_3747b463` (`tag_id`),
  KEY `tagging_taggeditem_e4470c6e` (`content_type_id`),
  KEY `tagging_taggeditem_829e37fd` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `accommodation_terms` AS select `advert_termaccommodation`.`id` AS `id`,`advert_termaccommodation`.`name` AS `name`,`advert_termaccommodation`.`days` AS `days` from `advert_termaccommodation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `advert_images` AS select `advert_photo`.`id` AS `id`,`advert_photo`.`picture` AS `image`,`advert_photo`.`advert_id` AS `advert_id` from `advert_photo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `adverts` AS select `advert_advert`.`id` AS `id`,`advert_advert`.`realtype_id` AS `category_id`,`advert_advert`.`city_id` AS `city_id`,`advert_advert`.`cityarea_id` AS `district_id`,`advert_advert`.`street_id` AS `street_id`,`advert_advert`.`housenumber` AS `housw`,`advert_advert`.`housematerial_id` AS `house_material_id`,`advert_advert`.`housetype_id` AS `house_type_id`,`advert_advert`.`rooms` AS `rooms`,`advert_advert`.`roomstype_id` AS `rooms_type_id`,`advert_advert`.`floor` AS `floor`,`advert_advert`.`floors` AS `floors`,`advert_advert`.`trassadirection_id` AS `trassa_diraction_id`,`advert_advert`.`landpurpose_id` AS `purpouse_land_id`,`advert_advert`.`landsize` AS `landsize`,`advert_advert`.`title` AS `title`,`advert_advert`.`desciption` AS `description`,`advert_advert`.`square` AS `area`,`advert_advert`.`squarelife` AS `life_area`,`advert_advert`.`kitchen` AS `kitchen`,`advert_advert`.`home_deadline` AS `home_deadline`,`advert_advert`.`free_from` AS `free_from`,`advert_advert`.`floor_type_id` AS `floor_type_id`,`advert_advert`.`wc_count` AS `wc_count`,`advert_advert`.`stateofrepair_id` AS `state_repair_id`,`advert_advert`.`ceill_height` AS `cell_height`,`advert_advert`.`distance` AS `distance`,`advert_advert`.`hotadv` AS `hotadv`,`advert_advert`.`created` AS `created`,`advert_advert`.`modified` AS `modified`,`advert_advert`.`cost` AS `price`,`advert_advert`.`costforall` AS `all_price`,`advert_advert`.`usercost` AS `user_cost`,`advert_advert`.`usercostforall` AS `all_user_cost`,`advert_advert`.`usercurrency_id` AS `currency_user_id`,`advert_advert`.`publication_date` AS `publication_date`,`advert_advert`.`viewcount` AS `viewcount`,`advert_advert`.`metro_id` AS `metro_station_id`,`advert_advert`.`door_id` AS `door_id`,`advert_advert`.`term_accommodation_id` AS `accommodation_term_id`,`advert_advert`.`typeoffund_id` AS `fund_type_id`,`advert_advert`.`locationofproperty_id` AS `preporty_location_id`,`advert_advert`.`businesscenterclass_id` AS `business_center_class_id`,`advert_advert`.`separateentrance_id` AS `separate_entrence_id`,`advert_advert`.`cabinetcount` AS `cabinetcount`,`advert_advert`.`bussinesperiod_id` AS `bussines_period_id`,`advert_advert`.`planning` AS `layout`,`advert_advert`.`poster` AS `image`,`advert_advert`.`contact_id` AS `contact_id`,`advert_advert`.`user_id` AS `user_id`,`advert_advert`.`slug` AS `slug`,`advert_advert`.`torg` AS `torg`,`advert_advert`.`free_to` AS `free_to`,`advert_advert`.`operationtype_id` AS `operation_type_id`,`advert_advert`.`comissionvalue` AS `commissionvalue`,`advert_advert`.`flattypeid_id` AS `flat_type_id`,`advert_advert`.`video` AS `video`,`advert_advert`.`admin` AS `admin`,`advert_advert`.`countryarea_id` AS `ragion_id`,`advert_advert`.`mapaddress` AS `mapaddress`,`advert_advert`.`youtube` AS `youtube` from `advert_advert`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `business_center_classes` AS select `advert_businesscenterclass`.`id` AS `id`,`advert_businesscenterclass`.`name` AS `name` from `advert_businesscenterclass`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bussines_periods` AS select `advert_arendabusinessperiod`.`id` AS `id`,`advert_arendabusinessperiod`.`name` AS `name`,`advert_arendabusinessperiod`.`period` AS `period` from `advert_arendabusinessperiod`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `categories` AS select `advert_realtype`.`id` AS `id`,`advert_realtype`.`name` AS `name`,`advert_realtype`.`subtype_id` AS `sub_type_id` from `advert_realtype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cities` AS select `advert_city`.`id` AS `id`,`advert_city`.`name` AS `name`,`advert_city`.`area_id` AS `area_id` from `advert_city`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `currency_users` AS select `advert_currency`.`id` AS `id`,`advert_currency`.`name` AS `name` from `advert_currency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `districts` AS select `advert_cityarea`.`id` AS `id`,`advert_cityarea`.`name` AS `name`,`advert_cityarea`.`cityid_id` AS `cityid_id` from `advert_cityarea`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `doors` AS select `advert_doortype`.`id` AS `id`,`advert_doortype`.`name` AS `name` from `advert_doortype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `flat_types` AS select `advert_flattype`.`id` AS `id`,`advert_flattype`.`name` AS `name` from `advert_flattype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `floor_types` AS select `advert_floortype`.`id` AS `id`,`advert_floortype`.`name` AS `name` from `advert_floortype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fund_types` AS select `advert_typeoffund`.`id` AS `id`,`advert_typeoffund`.`name` AS `name` from `advert_typeoffund`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `house_materials` AS select `advert_housematerial`.`id` AS `id`,`advert_housematerial`.`name` AS `name` from `advert_housematerial`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `house_types` AS select `advert_housetype`.`id` AS `id`,`advert_housetype`.`name` AS `name`,`advert_housetype`.`realtype_id` AS `realtype_id` from `advert_housetype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `layouts` AS select `advert_photoposter`.`id` AS `id`,`advert_photoposter`.`advert_id` AS `advert_id`,`advert_photoposter`.`planing` AS `image` from `advert_photoposter`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `metro_stations` AS select `advert_metro`.`id` AS `id`,`advert_metro`.`name` AS `name`,`advert_metro`.`city_id` AS `city_id` from `advert_metro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `operation_types` AS select `advert_operationtype`.`id` AS `id`,`advert_operationtype`.`name` AS `name` from `advert_operationtype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `preporty_locations` AS select `advert_locationofproperty`.`id` AS `id`,`advert_locationofproperty`.`name` AS `name` from `advert_locationofproperty`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `purpouse_lands` AS select `advert_landpurpose`.`id` AS `id`,`advert_landpurpose`.`name` AS `name` from `advert_landpurpose`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `regions` AS select `advert_countryarea`.`id` AS `id`,`advert_countryarea`.`name` AS `name` from `advert_countryarea`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rooms_types` AS select `advert_roomtype`.`id` AS `id`,`advert_roomtype`.`name` AS `name` from `advert_roomtype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `separete_entrences` AS select `advert_separateentrance`.`id` AS `id`,`advert_separateentrance`.`name` AS `name` from `advert_separateentrance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `state_repairs` AS select `advert_stateofrepair`.`id` AS `id`,`advert_stateofrepair`.`name` AS `name` from `advert_stateofrepair`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trassa_diractions` AS select `advert_trassadirection`.`id` AS `id`,`advert_trassadirection`.`name` AS `name` from `advert_trassadirection`;

INSERT INTO schema_migrations (version) VALUES ('20130607224824');

INSERT INTO schema_migrations (version) VALUES ('20130620083724');