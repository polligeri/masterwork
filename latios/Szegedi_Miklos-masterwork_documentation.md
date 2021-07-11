A projekt a vndb.org webalkalmazását kiszolgáló egyik, Postgres alapú adatbázis implementációját célozza SQL Server környezetbe, a naponta firssülő [data dump](https://dl.vndb.org/dump/) felhasználásával.

A rendelkezésre álló adatok rendeztettek, ugyanakkor módosításokra van szükség az SQL Server tábláiba való betöltéshez. A Management Studió átal nyújtott adat importálási opciók hagynak némi kivánnivalót maguk után ezért az alapképzésen elsajátított bash scriptelési ismeretekre építve formázom a betöltendő adatokat.

Az adatbázisban tárolt adatok vizuális novellák jellemzőihez kapcsolódnak, a táblák témái felsorlásszerűen:

 - alkotók
 - megjelenési nyelvek
 - platformok
 - kiadók
 - adaptációk
 - szereplők
 - tartalom jellege
 - az egyes történetek közötti kapcsolatok
 - kapcsolódó képek meta adatai, tartalmi besorolása
 - felhasználói vélemények és értékelések

Az adatbázis segítséget nyújt a felhasználó számára az igényeinek megfelelő mű felkutatásában, kiválasztásában.
