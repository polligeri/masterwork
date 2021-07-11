# Filmes adatbázis alkalmazás

## Alkalmazás áttekintése

Nagykran előforduló probléma, hogy az emberek nem tudják eldönteni, hogy melyik filmet nézzék meg. Ezen alkalmazás több
módon(értéklések, szűrések) próbálja megkönnyíti a felhasználók választását.

## Alkalmazás működése

Az alkalmazásban filmeket, rendezőket, kategóriákat és értékeléseket adhatunk meg és ezekre kereshetnek rá a rendszer
felhasználói. Ezeknek a felhasználóknak két féle szerepköre lehet, ezek az admin és a user.

### User

Minden filmre adhat le értékelést, de egy filmre csak egyet. Az adott értékelést később tudja módosítani. Filmeket
kereshet értékelések, kategóriák, vagy akár mindkettő és rendezők szerint is.
Csak saját felhasználói fiókját törölheti a rendszerből.

### Admin

Olyan user, aki hozzáadhat filmeket, rendezőket és kategóriákat az adatbázishoz és módosíthatja azokat. A módosítás
jogköre nem terjed ki a filmek értékelésére. Mindenki csak a saját értékelését tudja módosítani.
Admin rendelkezik törlési joggal.

#### Felhasznált technológiák

- Git
- Java
- Docker
- Gradle
- RESTful API
- Spring boot
- H2 database
- MySQL database
- Flyway
- Spring Data JPA
- JUnit 5
- Mockito
- Swagger
