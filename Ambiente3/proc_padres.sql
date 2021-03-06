#-----------------------------------------------------------------------------------------------
#---------------------------------------Padres--------------------------------------------------
#-----------------------------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS proc_padres;


DELIMITER //

CREATE PROCEDURE proc_padres()
BEGIN
	DROP TABLE IF EXISTS`clone_padres`;
	CREATE TABLE `clone_padres` (SELECT * FROM `aepadres`);	

	#-- Invertir las preguntas que estan formuladas de forma incorrecta

	UPDATE `clone_padres` SET `iv_10` = 6 - `iv_10`;
	UPDATE `clone_padres` SET `vi_8` = 4 - `vi_8` WHERE `vi_8` IS NOT NULL;
	UPDATE `clone_padres` SET `vi_9` = 4 - `vi_9` WHERE `vi_9` IS NOT NULL;
	UPDATE `clone_padres` SET `vi_10` = 4 - `vi_10` WHERE `vi_10` IS NOT NULL;
	UPDATE `clone_padres` SET `vi_11` = 4 - `vi_11` WHERE `vi_11` IS NOT NULL;


	#-- Reescalar las variables

	# Sección III
	ALTER TABLE  `clone_padres` CHANGE  `iii_1`  `iii_1` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iii_2`  `iii_2` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iii_3`  `iii_3` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iii_4`  `iii_4` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iii_5`  `iii_5` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iii_6`  `iii_6` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iii_7`  `iii_7` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iii_8`  `iii_8` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iii_9`  `iii_9` DOUBLE;

	UPDATE `clone_padres` SET `iii_1`=10/3*(`iii_1`-1);
	UPDATE `clone_padres` SET `iii_2`=10/3*(`iii_2`-1);
	UPDATE `clone_padres` SET `iii_3`=10/3*(`iii_3`-1);
	UPDATE `clone_padres` SET `iii_4`=10/3*(`iii_4`-1);
	UPDATE `clone_padres` SET `iii_5`=10/3*(`iii_5`-1);
	UPDATE `clone_padres` SET `iii_6`=10/3*(`iii_6`-1);
	UPDATE `clone_padres` SET `iii_7`=10/3*(`iii_7`-1);
	UPDATE `clone_padres` SET `iii_8`=10/3*(`iii_8`-1);
	UPDATE `clone_padres` SET `iii_9`=10/3*(`iii_9`-1);
 
	#-- Hallar las frecuencias 
	#------------------------------------
	#Alter table para los egen

	ALTER TABLE `clone_padres` ADD `f_iii_1_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iii_2_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iii_3_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iii_4_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iii_5_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iii_6_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iii_7_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iii_8_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iii_9_re_p` INT;

	# egen f_iii_1_re_p=count(iii_1), by(iii_1 dane)
	update clone_padres set f_iii_1_re_p =
	 (select count(iii_1) from(select dane, iii_1 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_1 = clone_padres.iii_1 group by a.iii_1, a.dane);

	# egen f_iii_2_re_p=count(iii_2), by(iii_2 dane)
	update clone_padres set f_iii_2_re_p =
	 (select count(iii_2) from(select dane, iii_2 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_2 = clone_padres.iii_2 group by a.iii_2, a.dane);

	# egen f_iii_3_re_p=count(iii_3), by(iii_3 dane)
	update clone_padres set f_iii_3_re_p =
	 (select count(iii_3) from(select dane, iii_3 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_3 = clone_padres.iii_3 group by a.iii_3, a.dane);

	# egen f_iii_4_re_p=count(iii_4), by(iii_4 dane)
	update clone_padres set f_iii_4_re_p =
	 (select count(iii_4) from(select dane, iii_4 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_4 = clone_padres.iii_4 group by a.iii_4, a.dane);

	# egen f_iii_5_re_p=count(iii_5), by(iii_5 dane)
	update clone_padres set f_iii_5_re_p =
	 (select count(iii_5) from(select dane, iii_5 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_5 = clone_padres.iii_5 group by a.iii_5, a.dane);

	# egen f_iii_6_re_p=count(iii_6), by(iii_6 dane)
	update clone_padres set f_iii_6_re_p =
	 (select count(iii_6) from(select dane, iii_6 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_6 = clone_padres.iii_6 group by a.iii_6, a.dane);

	# egen f_iii_7_re_p=count(iii_7), by(iii_7 dane)
	update clone_padres set f_iii_7_re_p =
	 (select count(iii_7) from(select dane, iii_7 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_7 = clone_padres.iii_7 group by a.iii_7, a.dane);

	# egen f_iii_8_re_p=count(iii_8), by(iii_8 dane)
	update clone_padres set f_iii_8_re_p =
	 (select count(iii_8) from(select dane, iii_8 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_8 = clone_padres.iii_8 group by a.iii_8, a.dane);

	# egen f_iii_9_re_p=count(iii_9), by(iii_9 dane)
	update clone_padres set f_iii_9_re_p =
	 (select count(iii_9) from(select dane, iii_9 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iii_9 = clone_padres.iii_9 group by a.iii_9, a.dane);



	# Sección IV
	ALTER TABLE  `clone_padres` CHANGE  `iv_1`  `iv_1` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_2`  `iv_2` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_3`  `iv_3` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_4`  `iv_4` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_5`  `iv_5` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_6`  `iv_6` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_7`  `iv_7` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_8`  `iv_8` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_9`  `iv_9` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_10`  `iv_10` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_11`  `iv_11` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `iv_12`  `iv_12` DOUBLE;

	UPDATE `clone_padres` SET `iv_1`=10/3*(`iv_1`-1);
	UPDATE `clone_padres` SET `iv_2`=10/3*(`iv_2`-1);
	UPDATE `clone_padres` SET `iv_3`=10/3*(`iv_3`-1);
	UPDATE `clone_padres` SET `iv_4`=10/3*(`iv_4`-1);
	UPDATE `clone_padres` SET `iv_5`=10/3*(`iv_5`-1);
	UPDATE `clone_padres` SET `iv_6`=10/3*(`iv_6`-1);
	UPDATE `clone_padres` SET `iv_7`=10/3*(`iv_7`-1);
	UPDATE `clone_padres` SET `iv_8`=10/3*(`iv_8`-1);
	UPDATE `clone_padres` SET `iv_9`=10/3*(`iv_9`-1);
	UPDATE `clone_padres` SET `iv_10`=5/2*(`iv_10`-1);
	UPDATE `clone_padres` SET `iv_11`=10/3*(`iv_11`-1);
	UPDATE `clone_padres` SET `iv_12`=10/3*(`iv_12`-1);

	#-- Hallar las frecuencias
	#------------------------------------
	#Alter table para los egen

	ALTER TABLE `clone_padres` ADD `f_iv_1_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_2_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_3_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_4_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_5_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_6_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_7_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_8_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_9_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_10_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_11_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_iv_12_re_p` INT;

	# egen f_iv_1_re_p=count(iv_1), by(iv_1 dane)
	update clone_padres set f_iv_1_re_p =
	 (select count(iv_1) from(select dane, iv_1 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_1 = clone_padres.iv_1 group by a.iv_1, a.dane);
 
	# egen f_iv_2_re_p=count(iv_2), by(iv_2 dane)
	update clone_padres set f_iv_2_re_p =
	 (select count(iv_2) from(select dane, iv_2 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_2 = clone_padres.iv_2 group by a.iv_2, a.dane);

	# egen f_iv_3_re_p=count(iv_3), by(iv_3 dane)
	update clone_padres set f_iv_3_re_p =
	 (select count(iv_3) from(select dane, iv_3 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_3 = clone_padres.iv_3 group by a.iv_3, a.dane);

	# egen f_iv_4_re_p=count(iv_4), by(iv_4 dane)
	update clone_padres set f_iv_4_re_p =
	 (select count(iv_4) from(select dane, iv_4 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_4 = clone_padres.iv_4 group by a.iv_4, a.dane);

	# egen f_iv_5_re_p=count(iv_5), by(iv_5 dane)
	update clone_padres set f_iv_5_re_p =
	 (select count(iv_5) from(select dane, iv_5 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_5 = clone_padres.iv_5 group by a.iv_5, a.dane);

	# egen f_iv_6_re_p=count(iv_6), by(iv_6 dane)
	update clone_padres set f_iv_6_re_p =
	 (select count(iv_6) from(select dane, iv_6 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_6 = clone_padres.iv_6 group by a.iv_6, a.dane);

	# egen f_iv_7_re_p=count(iv_7), by(iv_7 dane)
	update clone_padres set f_iv_7_re_p =
	 (select count(iv_7) from(select dane, iv_7 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_7 = clone_padres.iv_7 group by a.iv_7, a.dane);

	# egen f_iv_8_re_p=count(iv_8), by(iv_8 dane)
	update clone_padres set f_iv_8_re_p =
	 (select count(iv_8) from(select dane, iv_8 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_8 = clone_padres.iv_8 group by a.iv_8, a.dane);

	# egen f_iv_9_re_p=count(iv_9), by(iv_9 dane)
	update clone_padres set f_iv_9_re_p =
	 (select count(iv_9) from(select dane, iv_9 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_9 = clone_padres.iv_9 group by a.iv_9, a.dane);

	# egen f_iv_10_re_p=count(iv_10), by(iv_10 dane)
	update clone_padres set f_iv_10_re_p =
	 (select count(iv_10) from(select dane, iv_10 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_10 = clone_padres.iv_10 group by a.iv_10, a.dane);

	# egen f_iv_11_re_p=count(iv_11), by(iv_11 dane)
	update clone_padres set f_iv_11_re_p =
	 (select count(iv_11) from(select dane, iv_11 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_11 = clone_padres.iv_11 group by a.iv_11, a.dane);

	# egen f_iv_12_re_p=count(iv_12), by(iv_12 dane)
	update clone_padres set f_iv_12_re_p =
	 (select count(iv_12) from(select dane, iv_12 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.iv_12 = clone_padres.iv_12 group by a.iv_12, a.dane);




	# Sección V
	ALTER TABLE  `clone_padres` CHANGE  `v_1`  `v_1` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `v_2`  `v_2` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `v_3`  `v_3` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `v_4`  `v_4` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `v_5`  `v_5` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `v_6`  `v_6` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `v_7`  `v_7` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `v_8`  `v_8` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `v_9`  `v_9` DOUBLE;

	UPDATE `clone_padres` SET `v_1`=10/3*(`v_1`-1);
	UPDATE `clone_padres` SET `v_2`=10/3*(`v_2`-1);
	UPDATE `clone_padres` SET `v_3`=10/3*(`v_3`-1);
	UPDATE `clone_padres` SET `v_4`=10/3*(`v_4`-1);
	UPDATE `clone_padres` SET `v_5`=10/3*(`v_5`-1);
	UPDATE `clone_padres` SET `v_6`=5/2*(`v_6`-1);
	UPDATE `clone_padres` SET `v_7`=5/2*(`v_7`-1);
	UPDATE `clone_padres` SET `v_8`=10/3*(`v_8`-1);
	UPDATE `clone_padres` SET `v_9`=10/3*(`v_9`-1);

	#-- Hallar las frecuencias

	#------------------------------------
	#Alter table para los egen

	ALTER TABLE `clone_padres` ADD `f_v_1_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_v_2_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_v_3_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_v_4_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_v_5_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_v_6_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_v_7_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_v_8_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_v_9_re_p` INT;

	# egen f_v_1_re_p=count(v_1), by(v_1 dane)
	update clone_padres set f_v_1_re_p =
	 (select count(v_1) from(select dane, v_1 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_1 = clone_padres.v_1 group by a.v_1, a.dane);

	# egen f_v_2_re_p=count(v_2), by(v_2 dane)
	update clone_padres set f_v_2_re_p =
	 (select count(v_2) from(select dane, v_2 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_2 = clone_padres.v_2 group by a.v_2, a.dane);

	# egen f_v_3_re_p=count(v_3), by(v_3 dane)
	update clone_padres set f_v_3_re_p =
	 (select count(v_3) from(select dane, v_3 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_3 = clone_padres.v_3 group by a.v_3, a.dane);

	# egen f_v_4_re_p=count(v_4), by(v_4 dane)
	update clone_padres set f_v_4_re_p =
	 (select count(v_4) from(select dane, v_4 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_4 = clone_padres.v_4 group by a.v_4, a.dane);

	# egen f_v_5_re_p=count(v_5), by(v_5 dane)
	update clone_padres set f_v_5_re_p =
	 (select count(v_5) from(select dane, v_5 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_5 = clone_padres.v_5 group by a.v_5, a.dane);

	# egen f_v_6_re_p=count(v_6), by(v_6 dane)
	update clone_padres set f_v_6_re_p =
	 (select count(v_6) from(select dane, v_6 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_6 = clone_padres.v_6 group by a.v_6, a.dane);

	# egen f_v_7_re_p=count(v_7), by(v_7 dane)
	update clone_padres set f_v_7_re_p =
	 (select count(v_7) from(select dane, v_7 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_7 = clone_padres.v_7 group by a.v_7, a.dane);

	# egen f_v_8_re_p=count(v_8), by(v_8 dane)
	update clone_padres set f_v_8_re_p =
	 (select count(v_8) from(select dane, v_8 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_8 = clone_padres.v_8 group by a.v_8, a.dane);

	# egen f_v_9_re_p=count(v_9), by(v_9 dane)
	update clone_padres set f_v_9_re_p =
	 (select count(v_9) from(select dane, v_9 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.v_9 = clone_padres.v_9 group by a.v_9, a.dane);



	# Sección VI
	ALTER TABLE  `clone_padres` CHANGE  `vi_1`  `vi_1` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_2`  `vi_2` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_3`  `vi_3` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_4`  `vi_4` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_5`  `vi_5` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_6`  `vi_6` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_7`  `vi_7` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_8`  `vi_8` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_9`  `vi_9` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_10`  `vi_10` DOUBLE;
	ALTER TABLE  `clone_padres` CHANGE  `vi_11`  `vi_11` DOUBLE;

	UPDATE `clone_padres` SET `vi_1`=10/3*(`vi_1`-1);
	UPDATE `clone_padres` SET `vi_2`=10/3*(`vi_2`-1);
	UPDATE `clone_padres` SET `vi_3`=10/3*(`vi_3`-1);
	UPDATE `clone_padres` SET `vi_4`=10/3*(`vi_4`-1);
	UPDATE `clone_padres` SET `vi_5`=10/3*(`vi_5`-1);
	UPDATE `clone_padres` SET `vi_6`=10/3*(`vi_6`-1);
	UPDATE `clone_padres` SET `vi_7`=10/3*(`vi_7`-1);
	UPDATE `clone_padres` SET `vi_8`=5*(`vi_8`-1);
	UPDATE `clone_padres` SET `vi_9`=5*(`vi_9`-1);
	UPDATE `clone_padres` SET `vi_10`=5*(`vi_10`-1);
	UPDATE `clone_padres` SET `vi_11`=5*(`vi_11`-1);

	#-- Hallar las frecuencias

	#------------------------------------
	#Alter table para los egen
	ALTER TABLE `clone_padres` ADD `f_vi_1_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_2_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_3_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_4_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_5_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_6_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_7_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_8_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_9_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_10_re_p` INT;
	ALTER TABLE `clone_padres` ADD `f_vi_11_re_p` INT;

	# egen f_vi_1_re_p=count(vi_1), by(vi_1 dane)
	update clone_padres set f_vi_1_re_p =
	 (select count(vi_1) from(select dane, vi_1 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_1 = clone_padres.vi_1 group by a.vi_1, a.dane);

	# egen f_vi_2_re_p=count(vi_2), by(vi_2 dane)
	update clone_padres set f_vi_2_re_p =
	 (select count(vi_2) from(select dane, vi_2 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_2 = clone_padres.vi_2 group by a.vi_2, a.dane);

	# egen f_vi_3_re_p=count(vi_3), by(vi_3 dane)
	update clone_padres set f_vi_3_re_p =
	 (select count(vi_3) from(select dane, vi_3 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_3 = clone_padres.vi_3 group by a.vi_3, a.dane);

	# egen f_vi_4_re_p=count(vi_4), by(vi_4 dane)
	update clone_padres set f_vi_4_re_p =
	 (select count(vi_4) from(select dane, vi_4 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_4 = clone_padres.vi_4 group by a.vi_4, a.dane);

	# egen f_vi_5_re_p=count(vi_5), by(vi_5 dane)
	update clone_padres set f_vi_5_re_p =
	 (select count(vi_5) from(select dane, vi_5 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_5 = clone_padres.vi_5 group by a.vi_5, a.dane);

	# egen f_vi_6_re_p=count(vi_6), by(vi_6 dane)
	update clone_padres set f_vi_6_re_p =
	 (select count(vi_6) from(select dane, vi_6 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_6 = clone_padres.vi_6 group by a.vi_6, a.dane);

	# egen f_vi_7_re_p=count(vi_7), by(vi_7 dane)
	update clone_padres set f_vi_7_re_p =
	 (select count(vi_7) from(select dane, vi_7 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_7 = clone_padres.vi_7 group by a.vi_7, a.dane);

	# egen f_vi_8_re_p=count(vi_8), by(vi_8 dane)
	update clone_padres set f_vi_8_re_p =
	 (select count(vi_8) from(select dane, vi_8 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_8 = clone_padres.vi_8 group by a.vi_8, a.dane);

	# egen f_vi_9_re_p=count(vi_9), by(vi_9 dane)
	update clone_padres set f_vi_9_re_p =
	 (select count(vi_9) from(select dane, vi_9 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_9 = clone_padres.vi_9 group by a.vi_9, a.dane);

	# egen f_vi_10_re_p=count(vi_10), by(vi_10 dane)
	update clone_padres set f_vi_10_re_p =
	 (select count(vi_10) from(select dane, vi_10 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_10 = clone_padres.vi_10 group by a.vi_10, a.dane);

	# egen f_vi_11_re_p=count(vi_11), by(vi_11 dane)
	update clone_padres set f_vi_11_re_p =
	 (select count(vi_11) from(select dane, vi_11 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vi_11 = clone_padres.vi_11 group by a.vi_11, a.dane);




	# Sección VII
	ALTER TABLE  `clone_padres` CHANGE  `vii_1`  `vii_1` DOUBLE;

	UPDATE `clone_padres` SET `vii_1`=5/2*(`vii_1`-1);

	#------------------------------------
	#Alter table para los egen

	ALTER TABLE `clone_padres` ADD `f_vii_1_re_p` INT;

	# egen f_vii_1_re_p=count(vii_1), by(vii_1 dane)
	update clone_padres set f_vii_1_re_p =
	 (select count(vii_1) from(select dane, vii_1 from clone_padres) as a 
	 where a.dane = clone_padres.dane and a.vii_1 = clone_padres.vii_1 group by a.vii_1, a.dane);




	#--------------------------------------------------------------
	#   collapse (sum) $xlist_data (count) $xlist_frec, by(dane)  |
	#--------------------------------------------------------------
	DROP TABLE IF EXISTS `clone_padres1`;
	CREATE TABLE `clone_padres1`
	SELECT `dane`, `ano`, SUM(iii_1) AS iii_1_re_p, SUM(iii_2) AS iii_2_re_p, SUM(iii_3) AS iii_3_re_p,
	 SUM(iii_4) AS iii_4_re_p, SUM(iii_5) AS iii_5_re_p, SUM(iii_6) AS iii_6_re_p,
	 SUM(iii_7) AS iii_7_re_p, SUM(iii_8) AS iii_8_re_p, SUM(iii_9) AS iii_9_re_p,
	 SUM(iv_1) AS iv_1_re_p, SUM(iv_2) AS iv_2_re_p, SUM(iv_3) AS iv_3_re_p,
	 SUM(iv_4) AS iv_4_re_p, SUM(iv_5) AS iv_5_re_p, SUM(iv_6) AS iv_6_re_p,
	 SUM(iv_7) AS iv_7_re_p, SUM(iv_8) AS iv_8_re_p, SUM(iv_9) AS iv_9_re_p,
	 SUM(iv_10) AS iv_10_re_p, SUM(iv_11) AS iv_11_re_p, SUM(iv_12) AS iv_12_re_p,
	 SUM(v_1) AS v_1_re_p, SUM(v_2) AS v_2_re_p, SUM(v_3) AS v_3_re_p, SUM(v_4) AS v_4_re_p,
	 SUM(v_5) AS v_5_re_p, SUM(v_6) AS v_6_re_p, SUM(v_7) AS v_7_re_p, SUM(v_8) AS v_8_re_p,
	 SUM(v_9) AS v_9_re_p, SUM(vi_1) AS vi_1_re_p, SUM(vi_2) AS vi_2_re_p, SUM(vi_3) AS vi_3_re_p,
	 SUM(vi_4) AS vi_4_re_p, SUM(vi_5) AS vi_5_re_p, SUM(vi_6) AS vi_6_re_p, SUM(vi_7) AS vi_7_re_p,
	 SUM(vi_8) AS vi_8_re_p, SUM(vi_9) AS vi_9_re_p, SUM(vi_10) AS vi_10_re_p, SUM(vi_11) AS vi_11_re_p,
	 SUM(vii_1) AS vii_1_re_p,
	 COUNT(f_iii_1_re_p) AS f_iii_1_re_p, COUNT(f_iii_2_re_p) AS f_iii_2_re_p,
	 COUNT(f_iii_3_re_p) AS f_iii_3_re_p, COUNT(f_iii_4_re_p) AS f_iii_4_re_p,
	 COUNT(f_iii_5_re_p) AS f_iii_5_re_p, COUNT(f_iii_6_re_p) AS f_iii_6_re_p,
	 COUNT(f_iii_7_re_p) AS f_iii_7_re_p, COUNT(f_iii_8_re_p) AS f_iii_8_re_p,
	 COUNT(f_iii_9_re_p) AS f_iii_9_re_p, COUNT(f_iv_1_re_p) AS f_iv_1_re_p,
	 COUNT(f_iv_2_re_p) AS f_iv_2_re_p, COUNT(f_iv_3_re_p) AS f_iv_3_re_p,
	 COUNT(f_iv_4_re_p) AS f_iv_4_re_p, COUNT(f_iv_5_re_p) AS f_iv_5_re_p,
	 COUNT(f_iv_6_re_p) AS f_iv_6_re_p, COUNT(f_iv_7_re_p) AS f_iv_7_re_p,
	 COUNT(f_iv_8_re_p) AS f_iv_8_re_p, COUNT(f_iv_9_re_p) AS f_iv_9_re_p,
	 COUNT(f_iv_10_re_p) AS f_iv_10_re_p, COUNT(f_iv_11_re_p) AS f_iv_11_re_p,
	 COUNT(f_iv_12_re_p) AS f_iv_12_re_p, COUNT(f_v_1_re_p) AS f_v_1_re_p,
	 COUNT(f_v_2_re_p) AS f_v_2_re_p, COUNT(f_v_3_re_p) AS f_v_3_re_p,
	 COUNT(f_v_4_re_p) AS f_v_4_re_p, COUNT(f_v_5_re_p) AS f_v_5_re_p,
	 COUNT(f_v_6_re_p) AS f_v_6_re_p, COUNT(f_v_7_re_p) AS f_v_7_re_p,
	 COUNT(f_v_8_re_p) AS f_v_8_re_p, COUNT(f_v_9_re_p) AS f_v_9_re_p,
	 COUNT(f_vi_1_re_p) AS f_vi_1_re_p, COUNT(f_vi_2_re_p) AS f_vi_2_re_p,
	 COUNT(f_vi_3_re_p) AS f_vi_3_re_p, COUNT(f_vi_4_re_p) AS f_vi_4_re_p,
	 COUNT(f_vi_5_re_p) AS f_vi_5_re_p, COUNT(f_vi_6_re_p) AS f_vi_6_re_p,
	 COUNT(f_vi_7_re_p) AS f_vi_7_re_p, COUNT(f_vi_8_re_p) AS f_vi_8_re_p,
	 COUNT(f_vi_9_re_p) AS f_vi_9_re_p, COUNT(f_vi_10_re_p) AS f_vi_10_re_p,
	 COUNT(f_vi_11_re_p) AS f_vi_11_re_p, COUNT(f_vii_1_re_p) AS f_vii_1_re_p
	FROM `clone_padres` 
	GROUP BY `dane`;

	DROP TABLE `clone_padres`;



	#-- Generar variables promedios

	# Sección III
	ALTER TABLE `clone_padres1` ADD `pro_iii_1_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iii_2_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iii_3_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iii_4_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iii_5_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iii_6_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iii_7_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iii_8_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iii_9_re_p` DOUBLE;

	UPDATE `clone_padres1` SET `pro_iii_1_re_p`=`iii_1_re_p`/`f_iii_1_re_p`;
	UPDATE `clone_padres1` SET `pro_iii_2_re_p`=`iii_2_re_p`/`f_iii_2_re_p`;
	UPDATE `clone_padres1` SET `pro_iii_3_re_p`=`iii_3_re_p`/`f_iii_3_re_p`;
	UPDATE `clone_padres1` SET `pro_iii_4_re_p`=`iii_4_re_p`/`f_iii_4_re_p`;
	UPDATE `clone_padres1` SET `pro_iii_5_re_p`=`iii_5_re_p`/`f_iii_5_re_p`;
	UPDATE `clone_padres1` SET `pro_iii_6_re_p`=`iii_6_re_p`/`f_iii_6_re_p`;
	UPDATE `clone_padres1` SET `pro_iii_7_re_p`=`iii_7_re_p`/`f_iii_7_re_p`;
	UPDATE `clone_padres1` SET `pro_iii_8_re_p`=`iii_8_re_p`/`f_iii_8_re_p`;
	UPDATE `clone_padres1` SET `pro_iii_9_re_p`=`iii_9_re_p`/`f_iii_9_re_p`;

	# Seccion IV
	ALTER TABLE `clone_padres1` ADD `pro_iv_1_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_2_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_3_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_4_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_5_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_6_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_7_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_8_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_9_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_10_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_11_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_iv_12_re_p` DOUBLE;

	UPDATE `clone_padres1` SET `pro_iv_1_re_p`=`iv_1_re_p`/`f_iv_1_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_2_re_p`=`iv_2_re_p`/`f_iv_2_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_3_re_p`=`iv_3_re_p`/`f_iv_3_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_4_re_p`=`iv_4_re_p`/`f_iv_4_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_5_re_p`=`iv_5_re_p`/`f_iv_5_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_6_re_p`=`iv_6_re_p`/`f_iv_6_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_7_re_p`=`iv_7_re_p`/`f_iv_7_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_8_re_p`=`iv_8_re_p`/`f_iv_8_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_9_re_p`=`iv_9_re_p`/`f_iv_9_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_10_re_p`=`iv_10_re_p`/`f_iv_10_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_11_re_p`=`iv_11_re_p`/`f_iv_11_re_p`;
	UPDATE `clone_padres1` SET `pro_iv_12_re_p`=`iv_12_re_p`/`f_iv_12_re_p`;

	# Sección V
	ALTER TABLE `clone_padres1` ADD `pro_v_1_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_v_2_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_v_3_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_v_4_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_v_5_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_v_6_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_v_7_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_v_8_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_v_9_re_p` DOUBLE;

	UPDATE `clone_padres1` SET `pro_v_1_re_p`=`v_1_re_p`/`f_v_1_re_p`;
	UPDATE `clone_padres1` SET `pro_v_2_re_p`=`v_2_re_p`/`f_v_2_re_p`;
	UPDATE `clone_padres1` SET `pro_v_3_re_p`=`v_3_re_p`/`f_v_3_re_p`;
	UPDATE `clone_padres1` SET `pro_v_4_re_p`=`v_4_re_p`/`f_v_4_re_p`;
	UPDATE `clone_padres1` SET `pro_v_5_re_p`=`v_5_re_p`/`f_v_5_re_p`;
	UPDATE `clone_padres1` SET `pro_v_6_re_p`=`v_6_re_p`/`f_v_6_re_p`;
	UPDATE `clone_padres1` SET `pro_v_7_re_p`=`v_7_re_p`/`f_v_7_re_p`;
	UPDATE `clone_padres1` SET `pro_v_8_re_p`=`v_8_re_p`/`f_v_8_re_p`;
	UPDATE `clone_padres1` SET `pro_v_9_re_p`=`v_9_re_p`/`f_v_9_re_p`;

	# Sección VI
	ALTER TABLE `clone_padres1` ADD `pro_vi_1_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_2_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_3_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_4_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_5_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_6_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_7_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_8_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_9_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_10_re_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `pro_vi_11_re_p` DOUBLE;

	UPDATE `clone_padres1` SET `pro_vi_1_re_p`=`vi_1_re_p`/`f_vi_1_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_2_re_p`=`vi_2_re_p`/`f_vi_2_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_3_re_p`=`vi_3_re_p`/`f_vi_3_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_4_re_p`=`vi_4_re_p`/`f_vi_4_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_5_re_p`=`vi_5_re_p`/`f_vi_5_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_6_re_p`=`vi_6_re_p`/`f_vi_6_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_7_re_p`=`vi_7_re_p`/`f_vi_7_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_8_re_p`=`vi_8_re_p`/`f_vi_8_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_9_re_p`=`vi_9_re_p`/`f_vi_9_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_10_re_p`=`vi_10_re_p`/`f_vi_10_re_p`;
	UPDATE `clone_padres1` SET `pro_vi_11_re_p`=`vi_11_re_p`/`f_vi_11_re_p`;
	
	# Sección VII
	ALTER TABLE `clone_padres1` ADD `pro_vii_1_re_p` DOUBLE;

	UPDATE `clone_padres1` SET `pro_vii_1_re_p`=`vii_1_re_p`/`f_vii_1_re_p`;


	#-- Medias por pregunta
	#-------------------------------
	#   egen rowmean		       |
	#-------------------------------
	ALTER TABLE `clone_padres1` ADD `III_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `IV_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `V_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `VI_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `VII_p` DOUBLE;
	ALTER TABLE `clone_padres1` ADD `Ambi_escol_p` DOUBLE;

	UPDATE `clone_padres1` SET `III_p` = (pro_iii_1_re_p + pro_iii_2_re_p + pro_iii_3_re_p + pro_iii_4_re_p
	 + pro_iii_5_re_p + pro_iii_6_re_p + pro_iii_7_re_p + pro_iii_8_re_p + pro_iii_9_re_p) / 9;

	UPDATE `clone_padres1` SET `IV_p` = (pro_iv_1_re_p + pro_iv_2_re_p + pro_iv_3_re_p + pro_iv_4_re_p
	 + pro_iv_5_re_p + pro_iv_6_re_p + pro_iv_7_re_p + pro_iv_8_re_p + pro_iv_9_re_p + pro_iv_10_re_p
	 + pro_iv_11_re_p + pro_iv_12_re_p) / 12;

	UPDATE `clone_padres1` SET `V_p` = (pro_v_1_re_p + pro_v_2_re_p + pro_v_3_re_p + pro_v_4_re_p
	 + pro_v_5_re_p + pro_v_6_re_p + pro_v_7_re_p + pro_v_8_re_p + pro_v_9_re_p) / 9;

	UPDATE `clone_padres1` SET `VI_p` = (pro_vi_1_re_p + pro_vi_2_re_p + pro_vi_3_re_p + pro_vi_4_re_p
	 + pro_vi_5_re_p + pro_vi_6_re_p + pro_vi_7_re_p + pro_vi_8_re_p + pro_vi_9_re_p + pro_vi_10_re_p
	 + pro_vi_11_re_p) / 11;

	UPDATE `clone_padres1` SET `VII_p` = (pro_vii_1_re_p) / 1;

	UPDATE `clone_padres1` SET `Ambi_escol_p` = (III_p + IV_p + V_p + VI_p) / 4;

	DELETE FROM `aepadres1`;
	INSERT INTO `aepadres1` (dane, EAcademicasPadres, ComunicacionPadres, ParticipacionPadres, SeguridadResPadres, VII_p, AEscolarPadres, ano) 
	SELECT `dane`, III_p, IV_p, V_p, VI_p, VII_p, Ambi_escol_p, ano
	FROM `clone_padres1`;

	DROP TABLE `clone_padres1`;


	
END //

DELIMITER ;

