# A megoldandó probléma
Az adatbázis elsődleges célje egy ifjúsági folyóirat és könyvkiadó munkafolyamatainak rendszerezett dokumentálása és megtervezése. Egy ilyen cég esetében össze kall hangolni a szerkesztők, a tördelők, az illusztrátorok és a korrektorok munkáját, figyelembe véve a szabadságokat, egyéni terhelhetőséget és a termékek tervezett megjelenési idejét.
Emellett olyan feladatokkal is meg kell birkóznia a munkaszervezésre használt rendszernek, amelyek a hagyományos gazdasági társaságokra is jellemzők pl. raktárkészlet nyilvántartás, megrendelők adatainak kezelése és a megrendelések teljesítése.

# Tipikus felhasználási módok
Az adatbázisban a felmerülő probléma megoldásának céljából először az alkalmazottak személyes adatai kerülnek rögzítésre. Az egyedi (employeeID) azonosító mellett minden alkalmazottról tudnunk kell, hogy milyen beosztásban dolgozik, valamint azt is mely termékek elkészítésébe kapcsolódik be. Ezáltal nem csupán az alkalmazott munkaóráinak nyilvántartását tudjuk megvalósítani, hanem egy-egy konkrét termék elkészítésében a közreműködő munkatársak feladatai is összehangolhatók (pl. nem adunk ki a tördelőnek egy cikket, amelynek az adott pillanatban még csupán a kézirata készül a szerkesztőnél).

A munkafolyamatok tervezésén túl egy ilyen komplex adatbázis segítségével naprakészen nyomon követhetjük milyen termékek elkészítése folyik éppen, valamint mely korábbi termékekből és mekkora mennyiség áll rendelkezésre a raktárban.
A megfelelő eszközökkel korlátozhatjuk melyik felhasználó kérheti le a raktárkészletet vagy, hogy ki tudja azt módosítani.

A megrendelések teljesítésének is elengedhetetlen feltétele, hogy naprakészen kövessük a raktárkészletet, valamint a beérkező vásárlásokat is. Nagyon hasznos, ha meg tudjuk jelölni mely megrendelések kerültek már teljesítésre, melyik termékből nincs raktáron, valamint rendelkezésünkre állnak a megrendelők kapcsolattartói és azok elérhetőségei is.