# COVID-vakcina nyilvántartást kezelő adatbázis háziorvosok részére

# Problémakör

Globális pandémia esetén tömeges oltás idején általában a háziorvosok feladatkörébe tartozik az általuk szervezett, végrehajtott oltások nyilvántartása.

Ehhez azonban **nem rendelkeznek háziorvos szintű nyilvántartási rendszerrel. **

**Az oltási előjegyzést így sok esetben kockás füzetekbe, formázatlan Excel-táblázatokba írják, amit időről-időre az állami nyilvántartással is össze kell fésülni, ami borzasztó időveszteséggel, adminisztrációs teherrel jár.** 

Az állami nyilvántartási rendszerek azonban az esetek nagy részében nincsenek felkészítve a következő problémákra:

* Országhatárokon átnyúló közlekedés: Az állami rendszerek a saját SSN szám alapján (pl.TAJ) tartják nyilván a pácienseket, és csak országhatáron belül történő oltási adatokat tartalmaznak. Ha a páciens külföldön kapott 1 vagy 2 oltást, ez állami szinten általában nem (megfelelően) szerepel.
* Az állami nyilvántartó rendszerek biztosítanak többféle vakcinatípust, azonban alapvetően nincsenek összefésülve a páciens 1. vakcina beadásának idején történt általános állapotával, így a háziorvosnak minden páciensnél manuálisan kell ellenőriznie az olthatóságot.
* Az állami nyilvántartó rendszerek az adott vakcinatípus gyártási ajánlását alkalmazhatóság terén nagy általánosságban nem veszik figyelembe.
* Az állami adatszolgáltatótól a háziorvosok időszakos adatokat kapnak többségében (pl. heti egy lista az oltandókról) ami sokszor nem naprakész.
* A páciensek elérhetőségi adatai az állami központosított rendszerben nem naprakészek
* Egyéb szervek által eseti jelleggel elvárt háziorvos-praxis szintű adatszolgáltatás elkészítése nem megoldott.
* Nincs praxis szintű nyilvántartás az oltások során tapasztalt elsődleges mellékhatásokról

# Cél

**Az adatbázis célja a fentebb említett problémakör kezelése** egy háziorvos szinten működő nyilvántartó rendszerrel, ami biztosítja 

* előreprogramozott eljárásokkal előjegyzés készítését
* külföldi, ill. egyéb oltóponton történt oltások rögzítését
* **vakcinatípusok** életkor, általános egészségi állapot alapján történő **gyártói ajánlás** rögzítését, azok **automatikus figyelembe vételét** az oltás szervezésekor
* háziorvos-praxis szintű naprakész vakcinázási adatlap, egyszerűsített kimutatás gyors elkészítését számított táblával a rögzített adatok alapján 
* Más országbeli SSN számmal, vagy érvénytelen TAJ számmal, de praxishoz köthető páciensek oltási nyilvántartását
* Oltások által kiváltott elsődleges mellékhatások nyilvántartását
* Páciensek elérhetőségi adatainak naprakész kezelését
* Páciensek olthatóság szempontjából kritikus egészségügyi adatainak nyilvántartását


