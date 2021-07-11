# FITNESS FANATICS

# Sport Alkalmazás

## _Dokumentáció_

## Alkalmazás bemutatása

-     Az alkalmazás különféle sport tevékenységek nyomon követésében nyújt segítséget.

## Oldalak

| Oldalak             | Szerepük                                                                       |
| ------------------- | ------------------------------------------------------------------------------ |
| /                   | Főoldal (ide érkezik a felhasználó a regisztráció és/vagy bejelentkezés előtt) |
| /register           | Új felhasználó regisztrációja                                                  |
| /login              | Felhasználó bejelentkezése                                                     |
| /activities         | Bejelentkezés utáni főoldal (összes tevékenység időrendbeli listázása)         |
| /activities/new     | Új tevékenység hozzáadása                                                      |
| /activities/edit/id | Tevékenység módosítása                                                         |
| /profile            | Saját profil megjelenítése                                                     |
| /profile/edit/id    | Saját profil szerkesztése                                                      |
| /training-plans     | Edzés tervek megjelenítése                                                     |

## API végpontok

| API végpontok          | Szerepük                               |
| ---------------------- | -------------------------------------- |
| POST/register          | Új felhasználó regisztrációja          |
| POST/login             | Felhasználó bejelentkezése             |
| GET/activities         | Összes edzés időrendbeli listázása     |
| POST/activities        | Új edzés hozzáadása az adatbázishoz    |
| PUT/activities/{id}    | Tevékenység módosítása id alapján      |
| DELETE/activities/{id} | Tevékenység törlése id alapján         |
| GET/activities/{id}    | Saját profil lekérése és megjelenítése |
| PUT/users/{id}         | Saját profil módosítása id alapján     |
| DELETE/users/{id}      | Saját profil törlése                   |
| GET/photos/{id}        | Saját fotó lekérése és megjelenítése   |
| PUT/photos/{id}        | Saját fotó módosítása id alapján       |
| DELETE/photo/{id}      | Saját fotó törlése                     |

## Adatbázis gyűjtemények

| Nevük          | Tartalmuk            |
| -------------- | -------------------- |
| users          | felhasználók         |
| activities     | tevékenységek        |
| cities         | Magyarország városai |
| photos         | felhasználók fotói   |
| training plans | edzés tervek         |
