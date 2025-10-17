# counter_plus_plus

Petit projet d'entraînement Flutter · **État local + architecture propre + widgets réutilisables**.

---

## Objectifs pédagogiques

Ce mini-projet fait partie de mon parcours de formation Flutter/Riverpod (Semaine 1).
L’objectif est de :
- Comprendre le **StatefulWidget** et le cycle de vie (`initState`, `setState`).
- Gérer un **état local** via un contrôleur séparé (`CounterController`).
- Appliquer la **Clean UI architecture** :
  - UI (`presentation/`)
  - Logique (`controllers/`)
  - Widgets réutilisables (`widgets/`)
- Mettre en place une **synchronisation unidirectionnelle** :  
  `Action → Controller → _syncFromController() → UI`

## Concepts clés abordés

| Concept | Description |
|----------|--------------|
| **StatefulWidget** | Gestion d’un état local via `setState()` |
| **Controller séparé** | Centralisation de la logique métier |
| **Widgets stateless réutilisables** | Meilleure performance et lisibilité |
| **Synchronisation unidirectionnelle** | L’UI reflète toujours la logique |
| **Gestion des erreurs UX** | SnackBar si décrémentation en dessous de 0 |
| **Design minimaliste** | Interface sobre avec code lisible |

---

## Technologies et outils

- Flutter 3.x
- Dart 3.x
- Material 3
- VS Code
- Git & GitHub
- (Tests unitaires à venir)

---

