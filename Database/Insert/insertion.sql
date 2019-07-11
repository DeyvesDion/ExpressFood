

/* insertion dans la table plats */

INSERT INTO plats (reference, nom, categorie, description, prix, tva) VALUES ("PLT01", "Barbecue ribs", "Plat principal", "450 g de travers de porc cara  melisés sauce barbecue", "14.95", "1.49");
INSERT INTO plats (reference, nom, categorie, description, prix, tva) VALUES ("PLT02", "Cheesecake", "Dessert", "Gâteau fondant américain au fromage blanc", "5.95", "0.59");
INSERT INTO plats (reference, nom, categorie, description, prix, tva) VALUES ("PLT03", "BBQ chicken burger", "Plat principal", "Bun, croustillant de poulet mariné enrobé de cornflakes, bacon", "11.95", "1.19");
INSERT INTO plats (reference, nom, categorie, description, prix, tva) VALUES ("PLT04", "Mix tapas", "Plat principal", "Mini brochettes de poulet, panés à baase de fromage", "5.95", "0.59");
INSERT INTO plats (reference, nom, categorie, description, prix, tva) VALUES ("PLT05", "Brochettes boeuf", "Plat principal", "2 pièces de brochettes de boeuf au Gouda (contient du lait)", "6.00", "0.6");
INSERT INTO plats (reference, nom, categorie, description, prix, tva) VALUES ("PLT06", "Menu berger maison", "Plat principal", "2 steaks 45g, 2 cheddar, oeuf, becon", "7.20", "0.72");
INSERT INTO plats (reference, nom, categorie, description, prix, tva) VALUES ("PLT07", "Menu 1 cuisse grill - riz", "Plat principal", "Recette de riz équilibré", "9.50", "0.95");

/* insertion dans la table users */

INSERT INTO users (nom, prenom, telephone1, telephone2, codePostal, ville, numeroRue, rue, complementAdresse, email, motDePasse, disponible, categorie) VALUES ("FESNEAU", "Marc", "0601010101", NULL,  "92380", "Garches", "39", "Grande rue", "3eme étage", "marc@gmail.com", MD5("ufjfuUJH9__998"), NULL, "Client");
INSERT INTO users (nom, prenom, telephone1, telephone2, codePostal, ville, numeroRue, rue, complementAdresse, email, motDePasse, disponible, categorie) VALUES ("NDIAYE", "Sibeth", "0701010101", "0801010101",  "93800", "Epinay sur seine", "06", "Avenue de la république", NULL, "ndiaye@gmail.com", MD5("YT77HH_998"), NULL, "Client");
INSERT INTO users (nom, prenom, telephone1, telephone2, codePostal, ville, numeroRue, rue, complementAdresse, email, motDePasse, disponible, categorie) VALUES ("CLUZEL", "Sophie", "0901010101", NULL,  "75012", "Paris 12", "03", "Roi de Pologne", NULL, "sophie@yahoo.com", MD5("121277HH/998"), TRUE, "Livreur");
INSERT INTO users (nom, prenom, telephone1, telephone2, codePostal, ville, numeroRue, rue, complementAdresse, email, motDePasse, disponible, categorie) VALUES ("LEMOYNE", "Jean-Baptiste", "0101010101", NULL,  "73120", "Courchevel", "07", "Rue de la paix", NULL, "baptiste@yahoo.com", MD5("---_/,?77HH/998"), FALSE, "Livreur");


/* insertion dans la table commandes */

INSERT INTO commandes (reference, dateCreation, dateLivraison, nom, prenom, codePostal, ville, numeroRue, rue, complementAdresse, idClient, idLivreur) VALUES ("CMD01", "2019-01-16", "2019-01-16", "FESNEAU", "Marc", "92380", "Garches", "39", "Grande rue", "3eme étage", "1", "3");
INSERT INTO commandes (reference, dateCreation, dateLivraison, nom, prenom, codePostal, ville, numeroRue, rue, complementAdresse, idClient, idLivreur) VALUES ("CMD02", "2019-05-03", "2019-05-03", "MONTCHALIN", "De Amélie", "75016", "Paris 16", "24", "Duc de Boulogne", "4eme étage, interphone 19", "2", "3");

/* insertion dans la table ligneDeCommande */

INSERT INTO ligneDeCommandes (quantite, prix, tva, referenceCommandes, referencePlats) VALUES ("2","9.50", "0.95", "CMD01", "PLT07"); 
INSERT INTO ligneDeCommandes (quantite, prix, tva, referenceCommandes, referencePlats) VALUES ("3","14.95", "1.49", "CMD01", "PLT01");
INSERT INTO ligneDeCommandes (quantite, prix, tva, referenceCommandes, referencePlats) VALUES ("4","5.95", "0.59", "CMD02", "PLT02");

/* insertion dans la table stocks */

INSERT INTO stocks (quantite, referencePlats, idLivreur) VALUES ("12", "PLT03", "3");
INSERT INTO stocks (quantite, referencePlats, idLivreur) VALUES ("03", "PLT01", "3");
INSERT INTO stocks (quantite, referencePlats, idLivreur) VALUES ("05", "PLT02", "4");
INSERT INTO stocks (quantite, referencePlats, idLivreur) VALUES ("04", "PLT07", "4");