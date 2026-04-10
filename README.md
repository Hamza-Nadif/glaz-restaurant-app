# GLAZ

Application Flutter realisee initialement comme projet de fin d'etudes pour le restaurant GLAZ.  
Le projet contient une interface client avec navigation, authentification, consultation des plats, boissons, desserts, reservations et profil utilisateur.

## Etat du projet

Ce depot a ete repris apres plusieurs annees. Une premiere remise en ordre a ete faite pour :

- fiabiliser le demarrage de l'application
- initialiser `GetStorage` correctement
- clarifier la configuration du backend
- documenter la structure du projet

Certaines parties peuvent encore dependre d'un backend ancien ou de routes API qui ne sont plus actives.

## Fonctionnalites principales

- authentification et verification utilisateur
- affichage des categories, plats, desserts et boissons
- gestion du panier
- reservation de tables
- consultation des commandes
- page profil et informations du restaurant

## Structure du projet

Le dossier `lib/` est organise de la facon suivante :

```text
lib/
├── app/                 # Bootstrap et widget racine de l'application
├── common/              # Widgets reutilisables
├── constants/           # Couleurs, tailles, constantes globales, config
├── controllers/         # Controleurs GetX
├── hooks/               # Appels HTTP et chargement des donnees
├── models/              # Modeles de donnees
├── views/               # Pages et UI de l'application
└── main.dart            # Point d'entree
```

## Prerequis

Avant de lancer le projet, verifie que tu as :

- Flutter installe
- Dart installe via Flutter
- un emulateur Android, un appareil physique, ou Chrome pour le web
- un backend disponible si tu veux tester les appels API

Commande utile :

```bash
flutter --version
```

## Installation

Clone le depot puis installe les dependances :

```bash
git clone https://github.com/Hamza-Nadif/mon-projet-flutter.git
cd mon-projet-flutter
flutter pub get
```

## Configuration du backend

Le projet utilise une URL d'API configurable avec `--dart-define`.

Valeur par defaut :

```text
http://localhost:3000
```

Exemple avec une URL locale :

```bash
flutter run --dart-define=APP_BASE_URL=http://10.0.2.2:3000
```

Exemple avec une API distante :

```bash
flutter run --dart-define=APP_BASE_URL=https://mon-api.com
```

Si tu utilises Google Maps plus tard, tu peux aussi fournir une cle :

```bash
flutter run --dart-define=GOOGLE_MAPS_API_KEY=ta_cle
```

## Demarrage

### Lancer sur Android

```bash
flutter run
```

### Lancer sur Chrome

```bash
flutter run -d chrome
```

### Verifier le code

```bash
flutter analyze
```

### Executer les tests

```bash
flutter test
```

## Points d'attention

- le projet utilise `GetX` et `GetStorage`
- plusieurs appels HTTP pointent vers un backend externe
- certaines dependances sont declarees mais peu ou pas utilisees actuellement
- Firebase est liste dans `pubspec.yaml`, mais aucune configuration Firebase complete n'est fournie dans ce depot

## Priorites de correction recommandees

- verifier que les endpoints backend existent encore
- executer `flutter analyze` et corriger les erreurs une par une
- uniformiser les noms de fichiers et dossiers
- decouper progressivement `views/` en modules fonctionnels plus coherents
- nettoyer les dependances inutilisees

## Commandes utiles

```bash
flutter clean
flutter pub get
flutter analyze
flutter test
```

## Auteur

Projet realise initialement par Hamza Nadif, puis repris pour maintenance, correction et amelioration.
