# Vállalatirányítási Rendszer

## 1. Az applikáció ismertetése

Az alkalmazás segítségével vevői és gyártói megrendeléseket tudunk rögzíteni és nyomon követni.

### 1.1 Jogosultságkezelés

**Adminisztrátor**
-   Új felhasználót tud rögzíteni a rendszerben
-   A regisztrált felhasználók szerepkörét tudja módosítani

**Beszerzési menedzser**

-   Gyártói megrendeléseket tud rögzíteni és kezelni a rendszerben
-   Új termékeket tud felvenni a kínálatba  

**Adatfeldolgozó**

-   Vevői megrendeléseket tud rögzíteni és kezelni a rendszerben
-   Megtekintheti a vevői adatbázist és a megrendeléseket

### 1.2 Főbb funkciók

-   Regisztráció vezetéknév, keresztnév email és jelszó megadásával
-   Bejelentkezés email és jelszó megadásával
-   Megrendelés létrehozása / módosítása
-   Felhasználó létrehozása / módosítása
-   Termékkínálat megtekintése / módosítása
-   Vevői adatbázis megtekintése / módosítása

### 1.3 Technikai követelmények

#### Backend
-   Docker
-   Express.js
-   JSON Web Token
-   MongoDB
-   Node.js
    
#### Frontend
-   React

## 2. A vevői megrendelés rögzítése
A regisztrált adatfeldolgozó a vevői megrendeléseket tudja rögzíteni űrlap segítségével a rendszerben. A létrehozott megrendeléseket tudja módosítani és azok állapotát nyomon követni.

## 3. A gyártói megrendelés folyamata
A regisztrált beszerzési menedzser a gyártói megrendeléseket tudja rögzíteni űrlap segítségével a rendszerben. A létrehozott megrendeléseket tudja módosítani és azok állapotát nyomon követni.  
A beszállítást követően képes módosítani a megrendelés státuszát.

## 4. A vevői megrendelés rendezése
A regisztrált adatfeldolgozó a beszállítást követően a vevőnél fennálló esetleges tartozást rendezi és ennek következtében módosítja a megrendelést státuszát.

## 5. Termékkínálat kezelése
A regisztrált beszerzési menedzser új termékeket tud felvenni a kínálatba, módosíthatja a termékek paramétereit, valamint törölheti őket.