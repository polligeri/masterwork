# Óhaj Fodrász Oktatóközpont

## Áttekintés

Az alkalmazás egy fodrász oktatóközpont számára nyújt segítséget, annak érdekében, hogy kezelni tudják a tanulókat, a kurzusokat, oktatókat és oktatási helyszíneket. Továbbá lehetőség van a kurzusokra való jelentkezések kezelésére. Az alkalmazás képes email-en értesíteni a tanulókat a tervezett oktatásokról. Az alkalmazás az oktatásokra való jelentkezések átláthatóbbá tételét, a tanulók nyilvántartását és további tanulók célirányosabb megszólítását segíti.

## Felhasználók

Három résztvevőt kezel az alkalmazás:

- Tanuló
- Oktató
- Adminisztrátor

Az **admin** jogokkal rendelkező foglalkoztatott képes kezelni az oktatóközpont résztvevőinek elmentését, szerkesztését és törlését az adatbázisban, továbbá a tanulók képzésekre való jelentkezését koordinálja. Amikor új tanuló szeretne képzésre jelentkezni, először regisztrálni kell az adatait a rendszerben, és utána indítható a kurzusokra való jelentkezés. Új résztvevő rögzítésekor a név és az email cím kötelezően megadandó.

Az **oktatók** le tudják kérdezni a képzéseken résztvevő tanulók adatait, valamint a kurzus elvégzésének dokumentálását végzik. Kurzus elvégzői oklevelet kapnak. Akik nem tudják befejezni a képzést, őket az oktató törli a tanulói listáról. Egy befejezett képzés után az adminisztrátor elvégzi az oklevelek kiállítását.

Lehetséges egyéni vagy csoportos, gyakorlati és elméleti oktatáson való részvétel. A képzések eltérő eszközigénnyel rendelkező oktatási helyszínekhez kapcsolódnak. Az alkalmazás tárolja az adott helyszín maximum kapacitását, és ha a jelentkezők száma elérte a maximumot, több tanuló nem tud jelentkezni az oktatásra.

A **tanuló** lekérdezheti a képzések listáját, azokat szűrheti oktatási forma (egyéni vagy csoportos) vagy típus (elméleti vagy gyakorlati) szerint. Továbbá jelentkezhet a tervezett státuszú oktatásokra.

## Az alkalmazás főbb kezelőfelületei

A jelentkezők és résztvevők kezelésén keresztül listázhatók azok a személyek, akiket a képzések szervezői felvittek az adatbázisba. A listában lehetnek olyan személyek, akik még nem vettek részt képzésben, de itt találhatóak azok a személyek is, akik folyamatban levő, vagy már lezárult képzések résztvevői.

Elérhető a képzések listája, amelyeket a szervezők felvittek az adatbázisba. A listában különböző státuszú képzések lehetnek (lezárult, folyamatban, befejezetlen és befejezett).

Lekérdezhető a résztvevői lista. Itt nem jelenít meg valamennyi résztvevőről tárolt adatot az alkalmazás. Azok az adatok kerültek megjelenítésre, amelyek a képzés szervezője és az oktató számára a képzés folyamatában fontosak lehetnek.

## Az alkalmazás megvalósításához szükséges eszközök
- Java
- Gradle
- Spring boot
- REST API
- Spring Data JPA
- H2 database
- MySQL adatbázis
- Flyway
- JUnit 4
- Mockito
- Swagger
