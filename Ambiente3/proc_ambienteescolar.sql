#-----------------------------------------------------------------------------------------------------
#------------------------------Unir las diferentes Bases de datos-------------------------------------
#-----------------------------------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS proc_merge;

DELIMITER //

CREATE PROCEDURE proc_merge()
BEGIN
	DROP TABLE IF EXISTS `temp_merge`;
	CREATE TABLE `temp_merge` 
	SELECT `aepadres1`.`dane`, `EAcademicasPadres`, `ComunicacionPadres`, `ParticipacionPadres`, `SeguridadResPadres`, `VII_p`, `AEscolarPadres`, `EAcademicasEstudiantes`,
	 `ComunicacionEstudiantes`, `ParticipacionEstudiantes`, `SeguridadResEstudiantes`, `VII_e`, `AEscolarEstudiantes`, `aepadres1`.`ano` 
	FROM `aepadres1` LEFT JOIN `aeestudiantes1` ON `aeestudiantes1`.`dane` = `aepadres1`.`dane`;


	DROP TABLE IF EXISTS `temp_merge1`;
	CREATE TABLE `temp_merge1` 
	SELECT `temp_merge`.`dane`, `EAcademicasPadres`, `ComunicacionPadres`, `ParticipacionPadres`, `SeguridadResPadres`, `VII_p`, `AEscolarPadres`, 
	 `EAcademicasDocentes`, `ComunicacionDocentes`, `ParticipacionDocentes`, `SeguridadResDocentes`, `VII_d`, `AEscolarDocentes`, `EAcademicasEstudiantes`, `ComunicacionEstudiantes`, `ParticipacionEstudiantes`, 
	 `SeguridadResEstudiantes`, `VII_e`, `AEscolarEstudiantes`, `temp_merge`.`ano` 
	 FROM `temp_merge`, `aedocentes1`
	 WHERE `temp_merge`.`dane` = `aedocentes1`.`dane`;

	DROP TABLE `temp_merge`;

	#------------------------------------
	#   Aca va los ultimos egen rowmean |
	#------------------------------------
	ALTER TABLE `temp_merge1` ADD `III_total` DOUBLE;
	ALTER TABLE `temp_merge1` ADD `IV_total` DOUBLE;
	ALTER TABLE `temp_merge1` ADD `V_total` DOUBLE;
	ALTER TABLE `temp_merge1` ADD `VI_total` DOUBLE;
	ALTER TABLE `temp_merge1` ADD `VII_total` DOUBLE;
	ALTER TABLE `temp_merge1` ADD `Ambi_escol` DOUBLE;
	
	UPDATE `temp_merge1` SET `III_total` = (SELECT func_rowmean(`EAcademicasDocentes`, `EAcademicasEstudiantes`, `EAcademicasPadres`));
	UPDATE `temp_merge1` SET `IV_total` = (SELECT func_rowmean(`ComunicacionDocentes`, `ComunicacionEstudiantes`, `ComunicacionPadres`));
	UPDATE `temp_merge1` SET `V_total` = (SELECT func_rowmean(`ParticipacionDocentes`, `ParticipacionEstudiantes`, `ParticipacionPadres`));
	UPDATE `temp_merge1` SET `VI_total` = (SELECT func_rowmean(`SeguridadResDocentes`, `SeguridadResEstudiantes`, `SeguridadResPadres`));
	UPDATE `temp_merge1` SET `VII_total` = (SELECT func_rowmean(`VII_d`, `VII_e`, `VII_p`));

	UPDATE `temp_merge1` SET `Ambi_escol` = (`III_total` + `IV_total` + `V_total` + `VI_total`) / 4;
	
	UPDATE `temp_merge1` SET `III_total` = `III_total` * 10;
	UPDATE `temp_merge1` SET `IV_total` = `IV_total` * 10;
	UPDATE `temp_merge1` SET `V_total` = `V_total` * 10;
	UPDATE `temp_merge1` SET `VI_total` = `VI_total` * 10;
	
	
	DELETE FROM `AmbienteEscolar`;
	INSERT INTO `AmbienteEscolar` (`dane`, `EAcademicas`, `Comunicacion`, `Participacion`, `SeguridadRespeto`, `VII_total`,
	 `AmbienteEscolar`, `ano`) 
	SELECT `dane`, `III_total`, `IV_total`, `V_total`, `VI_total`, `VII_total`, `Ambi_escol`, `ano`
	FROM `temp_merge1`;


	DROP TABLE `temp_merge1`;
	
END //

DELIMITER ;
