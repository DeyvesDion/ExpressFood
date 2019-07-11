/*CREATION DES DIFFERENTES TABLES */

/* CREATION DE LA TABLE USERS */

CREATE TABLE users
(
    id INT AUTO_INCREMENT NOT NULL,
    nom VARCHAR (70) NOT NULL,
    prenom VARCHAR (70) NOT NULL,
    telephone1 INT NOT NULL,
    telephone2 INT,
    codePostal INT NOT NULL,
    ville VARCHAR (70) NOT NULL,
    numeroRue INT NOT NULL,
    rue VARCHAR (70) NOT NULL,
    complementAdresse VARCHAR (255),
    email VARCHAR (70) NOT NULL,
    motDePasse VARCHAR (70) NOT NULL,
    disponible TINYINT,
    categorie VARCHAR (70) NOT NULL,
    CONSTRAINT PK_users PRIMARY KEY (id)
);


/* CREATION DE LA TABLE COMMANDES */


CREATE TABLE commandes
(
    reference VARCHAR(8) NOT NULL,
    dateCreation DATE NOT NULL,
    dateLivraison DATE NOT NULL,
    nom VARCHAR(70) NOT NULL,
    prenom VARCHAR(70) NOT NULL,
    codePostal INT NOT NULL,
    ville VARCHAR(70) NOT NULL,
    numeroRue INT NOT NULL,
    rue VARCHAR(70) NOT NULL,
    complementAdresse VARCHAR(255),
    idClient INT NOT NULL,
    idLivreur INT NOT NULL,
    CONSTRAINT PK_commandes PRIMARY KEY (reference)
);


/* CREATION DE LA TABLE STOCKS */

CREATE TABLE stocks
(
    id INT AUTO_INCREMENT NOT NULL,
    quantite INT NOT NULL,
    referencePlats VARCHAR (70) NOT NULL,
    idLivreur INT NOT NULL,
    CONSTRAINT PK_stocks PRIMARY KEY (id)
);


/* CREATION DE LA TABLE LIGNE DE COMMANDE */

CREATE TABLE ligneDeCommandes
(
    id INT AUTO_INCREMENT NOT NULL,
    quantite INT NOT NULL,
    prix FLOAT NOT NULL,
    tva FLOAT NOT NULL,
    referenceCommandes VARCHAR (8) NOT NULL,
    referencePlats VARCHAR (8) NOT NULL,
    CONSTRAINT PK_ligneDeCommande PRIMARY KEY (id)
);

/* CREATION DE LA TABLE PLATS */

CREATE TABLE plats
(
    reference VARCHAR(8) NOT NULL,
    nom VARCHAR(70) NOT NULL,
    categorie VARCHAR(70) NOT NULL,
    description VARCHAR(70) NOT NULL,
    prix FLOAT NOT NULL,
    tva FLOAT NOT NULL,
    CONSTRAINT PK_plats PRIMARY KEY (reference)
);


/* AJOUT DES DIFFERNETES CLES ETRANGERES AUX TABLES */


/* AJOUT DES CLES ETRANGERES DANS LA TABLE COMMANDE */

ALTER TABLE commandes 
ADD CONSTRAINT FK_commandeClient FOREIGN KEY(idClient) REFERENCES users (id);

ALTER TABLE commandes 
ADD CONSTRAINT FK_commandeLivreur FOREIGN KEY(idLivreur) REFERENCES users (id);


/* AJOUT CLES ETRANGERES DANS LA TABLE STOCKS */

ALTER TABLE stocks 
ADD CONSTRAINT FK_stocksLivreur FOREIGN KEY(idLivreur) REFERENCES users (id);

ALTER TABLE stocks 
ADD CONSTRAINT FK_stocksPlats FOREIGN KEY(referencePlats) REFERENCES plats (reference);


/* AJOUT DES CLES ETRANGERES DANS LA TABLE LIGNE DE COMMANDE */

ALTER TABLE ligneDeCommandes  
ADD CONSTRAINT FK_ldcCmd FOREIGN KEY(referenceCommandes) REFERENCES commandes (reference);

ALTER TABLE ligneDeCommandes 
ADD CONSTRAINT FK_ldcPlats FOREIGN KEY(referencePlats) REFERENCES plats (reference); 