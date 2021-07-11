# Gépkölcsönző 

### Rövid leírás

Az alkalmazás segítséget nyújt egy képzeletbeli gépkölcsönző alkalmazottainak, hogy kezelni tudják a kölcsönzésre kínált eszközöket, ügyfeleket és nyomon követhessék a kölcsönzésket, mind az aktuális, mind a múltbélieket.

---

## Funkciók rövid ismertetése  

 __Alkamazottak kezelése__

 A redszerben elmenthetőek az alkalamzottak a szükséges adataikkal. Az alkalmazottal lekérdezhetőek az adatbázis által automatikusan generált azonosítójuk alapján és tervezetten majd a nevük alapján is. Lehet az alklamazottakat listázni és módosítani is. A továbbiakban tervezett az alkamazottak szerepköreinek bevezetése, úgy mint admin és felhasználó. Az admin jogosultságú alkamazottak képesek lesznel alkamazottakat lekérdezni, létrehozni, módosítani és törölni, míg a felhasználók a kölcsönzésre kínált tételeket és az ügyfeleket, valamint a   kölcsönzéseket tudják majd kezelni.   


__Eszközök kezelése__

 Az alkamazás képes nyilvántartani az összes kölcsönzésre kínált eszközt, azok állapotát és státuszát. Elmenthető új eszköz, lehet azonosító alapán lekérdezni és modosítani már meglévő eszközöket. Az eszközök kategorizálhatóak fajtáluk szerint. Egy eszközhöz tartozhat több kategória és egy kategóriához szintén tartohat több eszköz is. 

__Ügyfelek kezelése__

Az alkamazás segítséget nyújt az ügyfelek kezelésében is. 
Lehetőség van új ügyfelet hozzáadni a céges név megadásával, magánszemély esetében a nevével. Az ügyfelekhez tartoznak ügyféladatok, amiket az alkmazás külön is képes kezelni. Új ügyfél létrehozható egyből a részltes adatavail együtt is. Amenniyben csak az ügyfél kerül létrehozásra adatok nélkül, a késöbbiekben csak a megfelelő végpontokon lehet új úgyféladatot hozzáadni és módosítani.

__Kölcsönzések kezelése__

Az alkamazás segítségével nyomon követhetőek lesznek az aktuálisan kölcsönzés alatt álló tételek és a korábban kölcsönzött eszközök is lekérdezhetőek lesznek. 



> Tervezetten az alkamazás képes lesz értesíteni az ügyfeleket e-mailben az aktuálisan kölcsönzött tételekről, a kölcsönzés részleteiről, úgy, mint a határidő és az kölcsönzés díja.

---


#### Futtatási környezet, beállítások

Az alkalmazás egy Spring Boot alkalmazás, amelynek a futtatásához szükséges

- JAVA 1.8 környezet
- MySQL adatbázis

Az adatbázis csatlakozáshoz a paramétereket környezeti változókból olvassa ba a program.






