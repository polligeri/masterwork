
# **Masterwork**
## **Kerékpár webshop**
### **Az alkalmazás bemutatása:**
Az alkalmazást használva a felhasználónak lehetősége van üzletek, alkalmazottak, kerékpárok és alkatrészek kezelésére. Megadhatja az üzletekben dolgozó alkalmazottakat, az üzletben árult kerékpárokat és hogy a kerékpárok milyen alkatrészekből állnak össze. A webshop bármely komponensére(üzlet, alkalmazott, kerékpár, alkatrész) igaz, hogy le tudjuk kérdezni egyesével id alapján, le tudjuk kérni egy listában az adott komponens összes elemét. Lehetőség van új elemek felvételére, módosítására és törlésére.
Az üzletek id-ja alapján megkaphatjuk az üzletben dolgozó alkalmazottas listáját, illetve az üzletben árult kerékpárok listáját. A kerékpárok id-ja alapján megkaphatjuk a kerékpárt felépítő alkarészek listáját.
### **A projektet felépítő techonlógiák:**
* az adatbázis tábláiért a flyway felel
* az enitytások táblába helyezéséért a hibernate felel
* a kapott adatok validását a hibernate-validator és a javax-validator csinálja
* a unit tesztek a mockito segítségével kerülnek implemetálásra
* a kivételek kezelését a global exception handler végzi
* a végpontok dokumentációját a Swagger csinálja