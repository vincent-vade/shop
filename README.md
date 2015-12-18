##Installation de ruby et ruby on rails
Pour windows télécharger et installer 

[RailsFTW](http://files.bryanbibat.net/rails-ftw-v0.21-2.1.6-4.2.3.exe)

##Téléchargement du projet

#####Télécharger le zip 
[zip](https://github.com/vincent-vade/shop/archive/master.zip)
####ou  
```
git clone https://github.com/vincent-vade/shop.git
```
##Usage 
Aller dans le dossier courant

```
cd shop
```
Installer les dépendances

```
bundle install
```
Création de la base de donnée

```
rake db:create
```
Création des tables

```
rake db:migrate
```
Insertion des données

```
rake db:seed
```
Lancement du serveur

```
rails server
```