# Utazási iroda
---

## 1. A projekt áttekintése
Többfunkciós rendszer létrehozása, melyben különböző szereplők (látogató, bejelentkezett felhasználó, adminisztrátor/értékesítő) különböző felületeken tudnak új utazási foglalásokat kezdeményezni illetve meglévő foglalásokat megtekinteni, módosítani, törölni.

## 1.1 Az  utazási iroda foglalási rendszer működése
Az rendszer lehetővé teszi utazások foglalását bárki számára interneten keresztül valamint lehetőséget biztosít utazási vagy értékesítő irodákban szerződések megkötésére, meglévő foglalások módosítására.

## 1.2 Szerepek

**Adminisztrátor/értékesítő**
- Új utazási desztinációkat hozhat létre
- Meglévő desztinációkat tud szerkeszteni
- A megrendelés felületen új megrendeléseket/szerződéseket tud kötni


**Látogató**
- A nem bejelentkezett felhasználó láthatja az utazási iroda ajánlatait, de nem tud új foglalásokat kezdeményezni.


**Felhasználó**
- A bejelentkezett felhasználó új foglalásokat tud kezdeményezni. Ha már van megrendelése, megjelenítheti azt (azokat).


## 1.3 Fő jellemzők
- Az adminisztrátor/értékesítő a desztinációk felületen új desztinációkat tud létrehozni, a meglévő desztinációkat tudja szerkeszteni, törölni.
- A megrendelés felülten új megrendelések létrehozása, meglévő megrendelések áttekintése, szerkesztése, törlése. 
- A partnerek felületen új partnerek felvitele, meglévő partnerek listázása, meglévő partnerek szerkesztése, törlése.

## 1.4 Technikai követelmények
- Node.js, express használata backend oldalon
- Szabványos REST  API metódusok
- Adatbázis kezelése Mongoose-zal
- Frontend megjelenítése React-tel