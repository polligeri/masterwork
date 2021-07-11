**Zöldség-gyümölcs webshop kiszállítással – *adatbázis tervezet***

Bevezetés:

A zöldség-gyümölcs vásárlás a kereskedelmi szféra egyéb ágaihoz hasonlóan megváltozott a századelő szokásaihoz képest. Manapság egyre kevesebben járják a helyi piacot, melynek több oka is lehet:

\- időhiány

\- türelem hiánya (sorban állás)

\- bizalmatlanság kialakulása (termék minősége, árazása és származási helye iránt)

\- bankkártyával való fizetés lehetőségének hiánya

\- árusító erkölcstelen magatartása

\- parkolási nehézségek

\- teher elszállítása

\- számlázási nehézségek

Nem csoda, hogy ma már sokan a kényelmes, ugyanakkor megbízható házhoz szállítást választják, úgy a cégek, mint a magánszemélyek. Ehhez azonban szükség van egy megbízható webes felületre, ahol az áru megrendelése zökkenőmentesen megtörténik. A webshop fontos alappillére egy megfelelően rendezett adatbázis.

Feladat:

Egy struktúrált adatbázis végzi el az adatok megfelelő tárolását, kezelését. A tervezet logikailag elkülönített adattáblákra épül, amik helyes relációkkal kapcsolódnak össze. A fő kapcsolat az adatbázisban a Megrendelő(Customer) és a Rendelés(Order) viszonya, a többi tábla (Termék(Product), Beszállító(Supplier), Foglalkoztatott(Employee), stb.) a hatékonyságot és az átláthatóságot szolgálja. A cél a megrendelt termék(ek) a megfelelő helyre történő szállítása adott idő alatt.

Diagram:



