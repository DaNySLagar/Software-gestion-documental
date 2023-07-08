
-- -----------------------------------------------------
-- Table `Cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cargo` (
  `Id_Cargo` int(2) NOT NULL AUTO_INCREMENT,
  `Cargo` varchar(45) NOT NULL,
  PRIMARY KEY (`Id_Cargo`)
)ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Login` (
  `Id_Log` INT(2) NOT NULL AUTO_INCREMENT,
  `Contraseña` VARCHAR(45) NOT NULL,
  `Cargo_Id_Cargo` INT NOT NULL,
  PRIMARY KEY (`Id_Log`),
  INDEX(`Cargo_Id_Cargo`),
  FOREIGN KEY (`Cargo_Id_Cargo`) REFERENCES Cargo(`Id_Cargo`)
)ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tipo_documento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `idtipo_documento` INT(2) NOT NULL AUTO_INCREMENT,
  `tipo_documento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo_documento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UnidadUnap_CIP`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UnidadUnap_CIP` (
  `idUnidadUnap_CIP` INT(3) NOT NULL AUTO_INCREMENT,
  `Unidad_cip` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUnidadUnap_CIP`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cservicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cservicio` (
  `idCservicio` INT(9) NOT NULL AUTO_INCREMENT,
  `Descripcion` TEXT(100) NOT NULL,
  `Nro_documento` CHAR(45) NOT NULL,
  `FechaRecep` DATE NOT NULL,
  `MesCorresp` VARCHAR(45) NOT NULL,
  `Archivo` BLOB NOT NULL,
  `Cargo_Id_Cargo` INT NOT NULL,
  `idtipo_documento` INT NOT NULL,
  `idUnidadUnap_CIP` INT NOT NULL,
  PRIMARY KEY (`idCservicio`),
  INDEX(`Cargo_Id_Cargo`),
  FOREIGN KEY (`Cargo_Id_Cargo`) REFERENCES Cargo(`Id_Cargo`),
  INDEX(`idtipo_documento`),
  FOREIGN KEY (`idtipo_documento`) REFERENCES tipo_documento(`idtipo_documento`),
  INDEX(`idUnidadUnap_CIP`),
  FOREIGN KEY (`idUnidadUnap_CIP`) REFERENCES UnidadUnap_CIP(`idUnidadUnap_CIP`)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Personal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Personal` (
  `idPersonal` INT(4) NOT NULL AUTO_INCREMENT,
  `Nombres` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Correo` VARCHAR(45) NOT NULL,
  `DNI` CHAR(8) NOT NULL,
  `Telefono` INT(9) NOT NULL,
  `Codigo_uca` CHAR(10) NOT NULL,
  `Cargo_Id_Cargo` INT(2) NOT NULL,
  `idUnidadUnap_CIP` INT(3) NOT NULL,
  PRIMARY KEY (`idPersonal`),
  INDEX(`Cargo_Id_Cargo`),
  FOREIGN KEY (`Cargo_Id_Cargo`) REFERENCES Cargo(`Id_Cargo`),
  INDEX(`idUnidadUnap_CIP`),
  FOREIGN KEY (`idUnidadUnap_CIP`) REFERENCES UnidadUnap_CIP(`idUnidadUnap_CIP`)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Vacaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Vacaciones` (
  `idVac` INT(9) NOT NULL AUTO_INCREMENT,
  `Descripcion` TEXT(100) NOT NULL,
  `Tipovacaciones` VARCHAR(45) NOT NULL,
  `Nro_documento` CHAR(45) NOT NULL,
  `Personal` VARCHAR(25) NOT NULL,
  `FechaRecep` DATE NOT NULL,
  `MesCorresp` VARCHAR(45) NOT NULL,
  `Archivo` BLOB NOT NULL,
  `Cargo_Id_Cargo` INT NOT NULL,
  `idtipo_documento` INT NOT NULL,
  `Personal_idPersonal` INT(4) NOT NULL,
  PRIMARY KEY (`idVac`),
  INDEX(`Cargo_Id_Cargo`),
  FOREIGN KEY (`Cargo_Id_Cargo`) REFERENCES Cargo(`Id_Cargo`),
  INDEX(`idtipo_documento`),
  FOREIGN KEY (`idtipo_documento`) REFERENCES tipo_documento(`idtipo_documento`),
  INDEX(`Personal_idPersonal`),
  FOREIGN KEY (`Personal_idPersonal`) REFERENCES Personal(`idPersonal`)
)ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Licencias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Licencias` (
  `idLic` INT(9) NOT NULL AUTO_INCREMENT,
  `Descripcion` TEXT(100) NOT NULL,
  `Tipolicencia` VARCHAR(45) NOT NULL,
  `Nro_documento` CHAR(45) NOT NULL,
  `Personal` VARCHAR(25) NOT NULL,
  `FechaRecep` DATE NOT NULL,
  `MesCorresp` VARCHAR(45) NOT NULL,
  `Archivo` BLOB NOT NULL,
  `Cargo_Id_Cargo` INT NOT NULL,
  `idtipo_documento` INT NOT NULL,
 `Personal_idPersonal` INT(4) NOT NULL,
  PRIMARY KEY (`idLic`),
  INDEX(`Cargo_Id_Cargo`),
  FOREIGN KEY (`Cargo_Id_Cargo`) REFERENCES Cargo(`Id_Cargo`),
  INDEX(`idtipo_documento`),
  FOREIGN KEY (`idtipo_documento`) REFERENCES tipo_documento(`idtipo_documento`),
  INDEX(`Personal_idPersonal`),
  FOREIGN KEY (`Personal_idPersonal`) REFERENCES Personal(`idPersonal`)
)ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `Justificaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Justificaciones` (
  `idJust` INT(9) NOT NULL AUTO_INCREMENT,
  `Descripcion` TEXT(100) NOT NULL,
  `Nro_documento` CHAR(45) NOT NULL,
  `Personal` VARCHAR(25) NULL,
  `FechaRecep` DATE NOT NULL,
  `MesCorresp` VARCHAR(45) NOT NULL,
  `Archivo` BLOB NOT NULL,
  `Cargo_Id_Cargo` INT NOT NULL,
  `idtipo_documento` INT NOT NULL,
  `idUnidadUnap_CIP` INT NULL,
 `Personal_idPersonal` INT(4) NOT NULL,
  PRIMARY KEY (`idJust`),
  INDEX(`Cargo_Id_Cargo`),
  FOREIGN KEY (`Cargo_Id_Cargo`) REFERENCES Cargo(`Id_Cargo`),
  INDEX(`idtipo_documento`),
  FOREIGN KEY (`idtipo_documento`) REFERENCES tipo_documento(`idtipo_documento`),
  INDEX(`idUnidadUnap_CIP`),
  FOREIGN KEY (`idUnidadUnap_CIP`) REFERENCES UnidadUnap_CIP(`idUnidadUnap_CIP`),
  INDEX(`Personal_idPersonal`),
  FOREIGN KEY (`Personal_idPersonal`) REFERENCES Personal(`idPersonal`)
)ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Informes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Informes` (
  `idInforme` INT(9) NOT NULL AUTO_INCREMENT,
  `Asunto` TEXT(100) NOT NULL,
  `Nro_documento` CHAR(45) NOT NULL,
  `Personal` VARCHAR(25) NULL,
  `FechaRecep` DATE NOT NULL,
  `MesCorresp` VARCHAR(45) NOT NULL,
  `Archivo` BLOB NOT NULL,
  `Cargo_Id_Cargo` INT NOT NULL,
  `idtipo_documento` INT NOT NULL,
  `idUnidadUnap_CIP` INT NULL,
 `Personal_idPersonal` INT(4) NULL,
  PRIMARY KEY (`idInforme`),
  INDEX(`Cargo_Id_Cargo`),
  FOREIGN KEY (`Cargo_Id_Cargo`) REFERENCES Cargo(`Id_Cargo`),
  INDEX(`idtipo_documento`),
  FOREIGN KEY (`idtipo_documento`) REFERENCES tipo_documento(`idtipo_documento`),
  INDEX(`idUnidadUnap_CIP`),
  FOREIGN KEY (`idUnidadUnap_CIP`) REFERENCES UnidadUnap_CIP(`idUnidadUnap_CIP`),
  INDEX(`Personal_idPersonal`),
  FOREIGN KEY (`Personal_idPersonal`) REFERENCES Personal(`idPersonal`)
)ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Usuario` (
  `Id_Usuario` INT(2) NOT NULL AUTO_INCREMENT,
  `Nombres` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Cargo_Id_Cargo` INT NOT NULL,
  `Telefono` INT(9) NOT NULL,
  `Correo` VARCHAR(45) NOT NULL,
  `Codigo UCA` CHAR(10) NOT NULL,
  `DNI` CHAR(8) NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  INDEX(`Cargo_Id_Cargo`),
  FOREIGN KEY (`Cargo_Id_Cargo`) REFERENCES Cargo(`Id_Cargo`)
)ENGINE = InnoDB;

