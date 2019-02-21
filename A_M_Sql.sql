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
    
-- Afficher les informations d'une table:
    DESCRIBE 't_users'; -- DESCRIBE/DESC/EXPLAIN = même résultat
    --Infos plus détaillé:
    SHOW TABLE STATUS; 

-- Altérer / Modifier une table:
    ALTER TABLE 't_users'
        ADD 'user_point' TINYINT(2)                 -- Ajouter une colonne (2 est la longeur maximum du chiffre (99))
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
    


