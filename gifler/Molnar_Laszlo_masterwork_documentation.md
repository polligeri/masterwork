# CUSTOMER PORTAL
## 1. Bevezetés

A fejlesztés célja egy olyan weboldal létrehozása, amelyen keresztül szállítmányozással foglalkozó megbízónk saját ügyfeleinek tájékoztatást tud nyújtani a következőkről:

### 1.1. _Hírfolyam_
- Tájékoztatás közérdekű hírekről, változásokról (például ünnepi nyitvatartás, költözés bejelentése, új szolgáltatás elindítása, stb.)
- Megjelenési formája: lista rövid szöveges információkkal és egy link-el)

### 1.2. _Számlázási információ_
- Megbízónk ügyfelei tájékoztatást kérhetnek a megbízónk által kiállított számlákról
- Az ügyfelek lekérhetik számláikat és azok fizetési állapotát és
- letölthetik azok képét (hiteles számlamásolat) illetve azok adatait NAV ONLINE 3.0 formátumban.

## 2. Adatelérés, jogosultsági szintek
### 2.1. _Adminisztrátor_
- Létre tud hozni ügyfélszolgálati munkatársakat
- Kezelni tudja a hírfolyamot
- Le tudja kérdezni mindegyik ügyfél számláját
- Meg tudja változtatni saját adatait
- Törölni tudja saját fiókját, amennyiben van még legalább 1 adminisztrátor a rendszerben

### 2.2. _Ügyfélszolgálati munkatárs_
- Le tudja kérdezni mindegyik ügyfél számláját
- Meg tudja változtatni saját adatait
- Törölni tudja saját fiókját

### 2.3. _Ügyfél_
- Le tudja kérdezni saját számláinak adatait
- Le tudja tölteni saját számláinak hiteles másolatát
- Le tudja tölteni saját számláinak adattartalmát NAV ONLINE 3.0 formátumban
- Meg tudja változtatni saját adatait
- Törölni tudja saját fiókját


## 3. Backend funkciók
### 3.1. _Számlák adatainak feltöltése_
- Ezen a végponton keresztül tudja feltölteni a megbízó ügyviteli rendszere a számlák adatait NAV ONLINE 3.0 formátumban
### 3.2 _Kérelem fogadása a lokális ügyviteli rendszerből új ügyfélfiók létrehozására_
- Ezen a végponton keresztül kérheti a lokális ügyviteli rendszer új ügyfélfiók létrehozását
