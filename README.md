Ce playbook Ansible installe une application basique depuis un dépôt GitHub. Il assure que Python est installé, crée un environnement virtuel pour les dépendances, crée un utilisateur dédié pour lancer l'application et configure un service systemd pour s'assurer que l'application se lance au démarrage de la machine.

## Structure du Répertoire Ansible

ansible/
├── inventories
├───── inventory.ini
├── templates
├───── appli.yml
├── vars
├───── main.yml

## Ce que fait le Playbook

1. Installe Python :
    Assure que Python 3 est installé sur l'hôte cible.

2. Installe pip :
    Assure que pip pour Python 3 est installé.

3. Installe virtualenv :
    Installe `virtualenv` via pip.

4. Crée le répertoire de l'application :
    Crée le répertoire où l'application sera installée.

5. Crée l'utilisateur de l'application :
    Crée un utilisateur dédié pour exécuter l'application.

6. Télécharge le code de l'application :
    Télécharge le code source de l'application depuis le dépôt.

7. Décompresse le code de l'application :
    Décompresse le code source dans le répertoire de l'application.

8. Crée un environnement virtuel :
    Crée un environnement virtuel dans le répertoire de l'application.

9. Installe les dépendances de l'application :
    Installe les dépendances définies dans le fichier `requirements.txt`.

10. Crée un fichier de service systemd :
    Crée un fichier de service systemd pour gérer l'application.

11. Recharge le systemd :
    Recharge le  systemd pour prendre en compte le nouveau service.

12. Active et démarre le service de l'application :
    Active et démarre le service de l'application.



