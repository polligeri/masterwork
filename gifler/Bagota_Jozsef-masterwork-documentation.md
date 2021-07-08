# Szókártya Applikáció

## A projekt áttekintése

Az applikáció célja, hogy megkönnyítse az idegen nyelvek, vagy egyéb témákban a fogalmak, deffiníciók tanulását.

## A folyamat

A felhasználó megnyitva az applikációt két előre elkészített szókártya csomagot talál:

- angol - magyar szókártyák
- fullstack api alapfogalmak

A felhasználó reigsztráció után saját szókártya csomagokat készíthet és tárolhat az applikációhoz tartozó adatbázisban.

Az elkészített csomagokat megoszthatja a többi felhasználóval. (Publikussá tétel.) Ezek regisztráció nélkül is láthatóak, használhatóak.

## Szerepek

1. Regisztráció nélküli felhasználó

   - A nyilvános felhasználásra szánt szókártya csomagokat használhatja

2. Regisztrációval rendelkező felhasználó

   - A nyilvános felhasználásra szánt szókártya csomagokat használhatja
   - Saját szókártya csomagokat hozhat létre
   - A csomagokat mentheti/tárolhatja későbbi felhasználásra, módosíthatja és törölheti azokat
   - Az elkészített szókártyákat megoszthatja más regisztrált és nem regisztrált felhasználókkal

3. Adminisztrátor

   - Felhasználók kezelés
   - A nem regisztrált felhasználók által létrehozott nyilvános szókártya csomagokat szerkesztheti, új csomagokat készíthet.
   - Kezelheti a felhasználók által létrehozott szókártyákat: listázás, szerkesztés, törlés

## Főbb jellemzők

1. Felhasználók
   - létrehozása,
   - módosítása,
   - törlése
2. Szókártya csomagok
   - létrehozása,
   - módosítása,
   - törlése
3. Csomagok nyilvánossá tétele, megosztása más felhasználókkal
4. Felhasználók rangsorolása a létrehozott szókártya csomagok és a megtekintett szókártyák mennyisége szerint

## Technikai követelmények

### Backend

- Node.js
- Express.js
- MongoDB
- JSON Web Token
- Docker

### Frontend

- React

### API dokumentáció

- OpenAPI/Swagger
