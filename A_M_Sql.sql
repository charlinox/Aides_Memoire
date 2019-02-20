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
    );
    
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
    
-- Pour arrêter d'utiliser une BDD et revenir au début:
    USE MYSQL;
