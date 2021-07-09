# Vállalatirányítási rendszer

### A projekt célja

A feladat egy vállaltirányítási rendszer készítése. Az alkalmazás segítségével nyomon követhetőek az adott céghez beérkező rendelések illetve
a cég által az ügyfelek számára kiállított számlák. A rendszer nyilvántartja az aktuális árukészletet is. Az alkalmazás használatának fő célja 
a rendelési folyamatok átláthatóbbá tétele és lekérdezhetősége.


### Leírás

#### Vevők:

- Az alkalmazás tárolja a megrendeléseket, az aktuális készlet alapján teljesíti azokat
- A vevők adatai is eltárolásra kerülnek, rendeléseiket lekérdezhetik REST végponton keresztül

#### Árukészlet
- Az adatbázisból lekérdezhető az aktuális készlet
- Az árukészlet alapján történik a megrendelések teljesítése

#### Számlázás

- A megrendelések teljesítésekor számla kerül kiállításra a megrendelés és a megrendelő adataival
- A számlák szintén eltárolásra kerülnek az adatabázisban ahonnan lekérdezhetők

### Funkciók

A megrendelők rendeléseket tudnak leadni REST interfészen keresztül. Lekérdezhetik rendelésük állapotát, korábbi rendeléseiket is visszakereshetik
rendelési azonosító megadásával. Egy ügyfél törölheti is a rendelését vagy frissítheti a részleteket, amíg az nem került feldolgozásra.

A dolgozók hozzáférnek az összes megrendeléshez és megváltoztathatják azok állapotát, a készleteket szintén lekérdezhetik.
Hozzáférnek a vevőadatokhoz és a számlainformációkhoz, ezek lekérdezhetők számukra REST interfészek segítségével.

### Az alkalmazás megvalósításához szükséges eszközök

- Java
- Gradle
- Spring boot
- REST API
- Spring Data JPA
- H2 database
- Swagger
- Flyway
- JUnit 5
- Mockito
