# Könyvtári nyilvántartó alkalmazás

### 1. Projekt víziója

A feladat során egy könyvtárak által felhasználható alkalmazást készítek, amellyel nyomon lehet követni az egyes
könyvtárakhoz tartózó könyveket és felhasználókat REST interfacen keresztül. Az alkalmazás segítségével a felhasználók
és könyvtárosok kölcsönzési kéréseket tudnak küldeni a szervernek, amely alapján a könyvtáros elő tudja készíteni a
könyve(ke)t az átvételre. Továbbá a könyvtárosok lekérdezhetik a könyvtárhoz tartozó könyveket és felhasználókat
többféle szűrési lehetőséggel.

### 2. Alkalmazás felépítése

![adatstruktura](documentation_rss/adatstruktura.png)

[comment]: <> (TODO:update pic if changed)

### 3. Objektum készítési kényszerek

3.1 Az alkalmazással fel lehet venni szerzőket, könyveket és felhasználókat. Felhasználók lehetnek ügyfelek vagy
könyvtárosok, megfelelő alkalmazásbeli jogkörrel.

3.2 Könyvet csak már létező szerző(k)höz és tulajdonos könyvtárhoz rendelve lehet felvenni.

3.3 Felhasználót csak már létező könyvtárhoz rendelve lehet felvenni.

### 4. Kölcsönzés funkció leírása

A felhasználók ki tudnak kölcsönözni könyveket a könyvtárból, ilyenkor az alkalmazásban a könyvhöz hozzárendeljük azt a
felhasználót aki kikölcsönözte, valamint megadjuk, hogy meddig tart kölcsönzés.

A kölcsönzéskor létrejön egy bejegyzés a kölcsönzési történetben.

A kölcsönzés végét jelző "leaseUntil" mező változtatható.

Amikor visszakerül a könyv, akkor kitöltésre kerül a "returnedAt" mező.

### 5. Kölcsönzésre vonatkózó kényszerek

Egy felhasználó maximum 5 könyvet vehet ki egyszerre, valamint nem vehet ki új könyvet amíg van nála lejárt kölcsönzési
idejű könyv.

Egy könyvet maximum 1 hónapra lehet kölcsönözni, ami az ügyfél által egyszer hosszabbítható meg 1 héttel.

### 6. Csak könyvtárosok által eléhető funkciók:

- Létrehozási, olvasási, frissítési és törlési műveletek minden objektumra (ügyfelekre vonatkozó megkötések nélkül)
- Kölcsönzés lezárása

### 7. Ügyfelek részére is elérhető funkciók:

- Kölcsönzés indítása (maximum 1 hónapra)
- Kölcsönzés meghosszabbítása (kölcsönzési recordonként egyszer maximum 1 héttel)
- Publikus és saját információk olvasása

### 8. Szűrők

- Szerző szerinti keresés
- Elérhető könyvek
- Aktív kölcsönzések könyvtáranként vagy ügyfelenként
- Lejárt kölcsönzések könyvtáranként vagy ügyfelenként
- Lezárt kölcsönzések könyvtáranként vagy ügyfelenként

### 9. Felhasznált technológiák

- Git
- Github
- Docker
- Java
- Gradle
- RESTful API
- Spring boot
- H2 database
- Flyway
- Spring Data JPA
- JUnit 5
- Mockito
- Swagger