        Aide Mémoire SQL

-- Commentaire sur une seule ligne
# Commentaire sur une seule ligne
/* Commentaire sur
plusieurs lignes*/


-- Création de BDD:
    CREATE DATABASE 'test';
    -- Ou:
    CREATE DATABASE IF NOT EXISTS 'test';


-- Utiliser/sélectionner une BDD:
    USE 'test';


-- Afficher les BDD:
    SHOW DATABASES;


-- Supprimer une BDD:
    DROP DATABASE 'test';


-- Afficher les tables d'une BDD:
    SHOW TABLES FROM 'test';


-- Afficher les tables d'une BDD sélectionner (USE 'BDD';):
    SHOW TABLES;


-- Créer une table:
    CREATE TABLE 't_users'
    (
        'id_user' INT,
        'user_name' VARCHAR(65),
        'user_birthday' DATE
    )
    ENGINE = MyISAM --> Pour spécifier le moteur de stockage
    CHARACTER SET utf8md4 --> Pour spécifier le type d'encodage
    COLLATE utf8mb4_unicode_ci; --> Pour spécificer le type insenssible à la case
    
    create table animal (
    -> 'id_animal' SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    -> 'animal_espece' VARCHAR(40) NOT NULL,
    -> 'animal_sexe' CHAR(1),
    -> 'animal_date_naissance' DATETIME NOT NULL,
    -> 'animal_nom' VARCHAR(30),
    -> 'animal_commentaires' TEXT,
    -> PRIMARY KEY (id_animal)
    -> )
    -> ENGINE = InnoDB;
    
-- Afficher les informations d'une table:
    DESCRIBE 't_users'; -- DESCRIBE/DESC/EXPLAIN = même résultat
    --Infos plus détaillé:
    SHOW TABLE STATUS; 


-- Altérer / Modifier une table:
    ALTER TABLE 't_users'
        ADD COLUMN 'user_point' TINYINT(2)                 -- Ajouter une colonne (2 est la longeur maximum du chiffre (99))
        DROP 'user_point'                           -- Supprimer une colonne
        MODIFY 'id_user' SMALLINT                   -- Modifie une colonne
        CHANGE 'user_birthday' 'user_birth' DATE;   -- Change un élément par un autre


-- Supprimer une table:
    DROP TABLE 't_users';
    -- Ou:
    DROP TABLE IF EXISTS 't_users';


-- Contraintes:
    NOT NULL                    --> Champs(colonne) obligatoire (ex: 'id_user' SMALLINT(6) NOT NULL, )
    DEFAULT                     --> Champs(colonne) avec une valeurs par défaut (ex:: 'user_admin' BOOLEAN DEFAULT 0 )
    CHECK(condition a test)     --> Champs(colonne) avec une vérification de condition (ex: 'id_user' SMALLINT(6) NOT NULL CHECK(id_user <= 10000, )
    UNIQUE(valeurUnique)        --> Valeur de champ unique. Pour un site web par exemple, les identifiants de compte son unique (ex: UNIQUE('user_name') )
    PRIMARY KEY('colonne')      --> Clé primaire. C'est le système qui gère les id de cette colonne (ex: PRIMARY KEY('id_user') )
    AUTO_INCREMENT              --> Incrémentation automatique (ex: 'id_user' SMALLINT(6) NOT NULL AUTO_INCREMENT,)
    FOREIGN KEY('colonne') REFERENCES 'table_references'('colonne') --> Clé étrangère, pour faire une relation avec une autre table
    
    CREATE INDEX 'idx_users' ON 'table_users'('user_name', 'user_birthday'); --> création d'un index pour améloirer la recherche lors d'une requête


-- Pour arrêter d'utiliser une BDD et revenir au début:
    USE MYSQL;


-- Voir les utilisateurs sur le système de BDD (MySQL):
    SELECT USER FROM mysql.user;


-- Voir l'utilisateur en cours:
    SELECT current_user();


-- Créer un utilisateur pour MySQL:
    CREATE USER 'user'@'hôte' IDENTIFIED BY 'mot_de_passe';


-- Changer un mot de passe utilisateur:
    ALTER USER 'user'@'hôte' IDENTIFIED BY 'nouveau_MDP';


-- Gérer les droits utilisateur:
    GRANT privilege_voulu ON database.* TO 'user'@'hôte';       --> Attribuer des droits (voir tableau des privilèges)
    REVOKE privilege_voulu ON database.* FROM 'user'@'hôte';    --> Retirer des droits (voir tableau des privilèges)


-- Charger un script .sql:
    SOURCE /chemin/du/script/sql;


-- Récuperer / sélectionner / lire des données:
    SELECT 'champs_de_la_table' FROM 'table';
    SELECT DISTINCT ... FROM ...;               --> DISTINCT pour éviter des doublons dans les résultats


-- Insérez des données sans préciser les colonnes:
    'exemple 1:'
    INSERT INTO 'animal'
    VALUES (1, 'chien', 'M', '2010-04-05 13:43:00', 'Rox', 'Mordille beaucoup');

    'exemple 2:'
    INSERT INTO 'animal'
    VALUES (2, 'chat', NULL, '2010-03-24 02:23:00', 'Roucky', NULL);

    'exemple 3:'
    INSERT INTO 'animal' 
    VALUES (NULL , 'chat', 'F', '2010-09-13 15:02:00', 'Schtroumpfette', NULL);

-- Insérez des données en précisant les colonnes:
    INSERT INTO 'animal' (espece, sexe, date_naissance) 
    VALUES ('tortue', 'F', '2009-08-03 05:12:00');
    
    INSERT INTO 'animal' (nom, commentaires, date_naissance, espece) 
    VALUES ('Choupi', 'Né sans oreille gauche', '2010-10-03 16:44:00', 'chat');
    
    INSERT INTO 'animal' (espece, date_naissance, commentaires, nom, sexe) 
    VALUES ('tortue', '2009-06-13 08:17:00', 'Carapace bizarre', 'Bobosse', 'F');


-- Insertion multiple:
    INSERT INTO 'animal' (espece, sexe, date_naissance, nom) 
    VALUES ('chien', 'F', '2008-12-06 05:18:00', 'Caroline'),
           ('chat', 'M', '2008-09-11 15:38:00', 'Bagherra'),
           ('tortue', NULL, '2010-08-23 05:18:00', NULL);


-- Sélectionner des données:
    -- La clause WHERE (permet de restreindre les résultats selon des critères de recherche:
    SELECT * FROM 'animal' WHERE animal_espece = 'chien';
    
    SELECT * FROM 'animal' WHERE animal_espece < '200-10-01';
    
    SELECT * FROM 'animal' WHERE animal_espece != 'chat';
    
    -- Combinaisons de critères:
    SELECT * FROM 'animal' WHERE animal_espece='chat' AND animal_sexe='F';

    SELECT * FROM 'animal' WHERE animal_espece='chat' && animal_sexe='F';


-- Tri des données:
    SELECT * FROM 'animal' WHERE animal_espece = 'chien' ORDER BY animal_date_naissance;
    
    -- Tri ascendant:
    SELECT * FROM 'animal' WHERE animal_espece = 'chien' ORDER BY animal_date_naissance ASC;
    
    -- Tri descendant:
    SELECT * FROM 'animal' WHERE animal_espece = 'chien' ORDER BY animal_date_naissance DESC;


-- Éliminer les doublons:
    -- Par exemple pour connaître toute les espèces d'un élevage, pour éviter d'avoir 500 lignes chien
    SELECT DISTINCT animal_espece FROM 'animal';


-- Restreindre les résultats:
    LIMIT nombre_de_lignes OFFSET decalage;
    -- (le nombre de lignes que l'on veut récupérer et OFFSET pour indiquer à partir de quelle ligne on souhaite obtenir les résultats
    
    -- exemple: 
    SELECT * FROM 'animal' ORDER BY id LIMIT 6 OFFSET 0;

    SELECT * FROM 'animal' ORDER BY id LIMIT 6 OFFSET 3;


-- Recherche approximative:
    LIKE
/*   '%'  : qui représente n'importe quelle chaîne de caractères, quelle que soit sa longueur (y compris une chaîne de longueur 0) ;

    '_'  : qui représente un seul caractère.
    
    Quelques exemples :

'b%'  cherchera toutes les chaînes de caractères commençant par 'b'  ("brocoli", "bouli", "b").

'b_'  cherchera toutes les chaînes de caractères contenant deux lettres dont la première est'b'  ("ba", "bf", "b8").

'%ch%ne'  cherchera toutes les chaînes de caractères contenant 'ch'  et finissant par 'ne'  ("chne", "chine", "échine", "le pays le plus peuplé du monde est la Chine").

'p_rl_'  cherchera toutes les chaînes de caractères commençant par un "p" suivi d'un caractère, puis de "rl" et enfin se terminant par un caractère ("parle", "perla", "perle").
*/

    SELECT * FROM 'animal' WHERE animal_commentaires LIKE '%oreil'
    
    -- POUR D'AUTRE TYPE DE  RECHERCHE SE RÉFÉRER AU COURS D'OC


-- Sauvegarder une base de données:
    -- HORS DU PROMPT MYSQL (DANS UN TERMINAL CLASSIQUE):
    'mysqldump -u user -p --opt nom_de_la_base > sauvegarde.sql'
