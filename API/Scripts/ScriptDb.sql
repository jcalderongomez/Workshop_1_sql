CREATE TABLE Marca(
	MarcaId INT NOT NULL IDENTITY,
	Nombre nvarchar(120) NOT NULL
);

ALTER TABLE Marca 
ADD CONSTRAINT PK_Marca PRIMARY KEY (MarcaId);

insert into marca(nombre) values('Mazda');
insert into marca(nombre) values('Renault');
insert into marca(nombre) values('Fiat');
insert into marca(nombre) values('Toyoya');

CREATE TABLE Vehiculo(
	VehiculoId INT NOT NULL IDENTITY,
	Nombre nvarchar(120) NOT NULL,
	Cilindros nvarchar(120) NOT NULL,
	ImagenUrl nvarchar (200),
	Precio numeric(7,2),
	MarcaId int not null
);

ALTER TABLE Vehiculo
ADD CONSTRAINT PK_Vehiculo PRIMARY KEY (VehiculoId);

ALTER TABLE Vehiculo
ADD CONSTRAINT FK_Vehiculo_VehiculoId FOREIGN KEY(MarcaId)
REFERENCES Marca(MarcaId) ON DELETE CASCADE


INSERT INTO Vehiculo(Nombre,Cilindros,Precio,MarcaId) values('Mazda 6','1600',90000,'1');

INSERT INTO Vehiculo(Nombre,Cilindros,Precio,MarcaId) values('Fiat Pilot','1600',50000,'3');