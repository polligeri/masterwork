# Hangszerapró


Egy weboldal, ahol lehetőség van különböző zenei- és stúdiótechnikai eszközök eladásra kínálására, valamint megvásárlására.


## Az oldal felépítése


-  **Főoldal:** Tartalmaz egy üdvözlő szekciót, egy termékkategória választót.

-  **Hirdetések:** Megjelennek a választott kategóriában található hirdetések kártyái. Lehetőség van szűrésre, valamint a hirdetések közti keresésre kulcsszó alapján.

-  **Regisztráció:** A regisztráció által válhat a vendég felhasználóvá, így lehetősége nyílik hirdetés feladására. A regisztrációhoz szükséges adatok: **név, e-mail cím, jelszó**.

-  **Hirdetés feladása:** A bejelentkezett felhasználó hirdetéseket adhat fel. A hirdetésben kötelező megadni leírást az adott eszközről, valamint képet feltölteni. A hirdetés kártyáin megtalálható lesz a hirdető neve és e-mail címe.

-  **Hirdetések kezelése:** A bejelentkezett felhasználónak lesz lehetősége a hirdetéseit áttekinteni, törölni, valamint módosítani őket.


## Felhasználói jogosultságok


- **Vendég:** Lehetősége van a hirdetések közti böngészésre.

- **Regisztrált felhasználó:** Lehetősége van hirdetés feladására, valamint a saját hirdetéseinek módosítására és törlésére.


## Az oldal működése

A regisztrált felhasználók hirdetéseket adnak fel, melyek között akár vendégként is lehetőség van böngészni, illetve kapcsolatba lépni a hirdetővel.

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