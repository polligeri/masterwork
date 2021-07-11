Shared Service Center(SSC) – Szolgáltató központ IT support adatbázisa

Problémakör:

A szolgáltató központok vagy röviden SSCk, egyfajta kiszervezett tevékenységet látnak el, ami sokféle területet fedhet le (HR, informatikai támogatás, pénzügyek kezelése marketing stb.) Jelen esetben egy SSC informatikai támogatásának (IT Support) a rendszerét fogom össze egy adatbázisba úgy, hogy a rendezett adatok segítségével könnyebben lehessen külön féle riportokat, elemzéseket készíteni a managementnek. A mindennapi hatékony működéshez elengedhetetlen, hogy indikátorokat készítsenek a különféle esetekhez, bejelentésekhez, hiszen valamennyi tevékenysége a támogatásnak pénzügyi vonzattal jár az ügyfelek/szolgáltató részére. 

Megoldás részletezése:

Az adatbázisban szereplő adattáblák létező informatika támogatás struktúráját követik, így belefoglaltam a bejelentések típusait: incidens, request, probléma valamint projekt. Az incidensek más néven hibajegyek valamilyen egyedi egy felhasználót érintő eseteket jelölnek, míg a problémák nagyobb volumenű kiesést, problémát jelentenek. A requestek (kérelmek) több típusúak lehetnek, valami cseréje változtatása vagy igénylése lehet, míg a projektek szintén nagyobb horderejű kérelmek több időt akár hónapokat is lefedhetnek, az infrastruktúrát lényegében is változtathatja (pl.: új operációs rendszerre való átálláshoz való migráció előkészítése). 

A mindennapi szolgálatás biztosítását a munkavállalók (agent-ek) végzik, napi kommunikációban állnak a felhasználókkal (userekkel). Így fontos hogy a táblák ennek megfelelően lettek létrehozva, tartalmazzák az egyes elérhetőségeket (email address, phone number). 

Külön táblákban rendeztem az eszközöket (software, hardware és peripherial táblák), ezáltal átláthatóbbá téve a rendelkezésre álló eszköztárat. Továbbá ez könnyebbséget jelent managementnek a számlázás nyomon követésére is.
