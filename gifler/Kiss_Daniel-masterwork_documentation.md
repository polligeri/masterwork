# Biztosítási rendszer

- [1. Projekt ismertetése](#1-projekt-ismertetése)
  - [1.1. Jogosultságok](#11-jogosultságok)
  - [1.2. Fő funkciók](#12-fő-funkciók)
- [2. Biztosításkötés menete](#2-biztosításkötés-menete)
- [3. Díjrendezés](#3-díjrendezés)
- [4. Kárbejelentés](#4-kárbejelentés)
  - [4.1. Káresemény elbírálása](#41-káresemény-elbírálása)
- [5. Biztosítási szerződés megszűnése](#5-biztosítási-szerződés-megszűnése)
  - [5.1. Sztornó](#51-sztornó)
  - [5.2. Törlés](#52-törlés)

## 1. Projekt ismertetése

A Biztosítási rendszer egy olyan rendszer, mely segítségével online köthetők biztosítási szerződések, rendezhetők a díjtartozások, információk tekinthetők meg már meglévő biztosításokról, valamint káresemények jelenthetők a biztosító felé.

## 1.1. Jogosultságok

- Biztosító
  - Hozzáférés az ügyféllistához
  - Hozzáférés ügyfél biztosításainak listájához
  - Hozzáférés ügyfél díjtartozásaihoz
  - Kárbejelentések elfogadása / elutasítása
  - Díjrendezés
  - Biztosítási szerződés törlése
- Ügyfél
  - Biztosítási szerződés megkötése
  - Hozzáférés saját, meglévő biztosításokhoz
  - Hozzáférés saját, fennálló díjtartozásaihoz
  - Kárbejelentés
- Nem regisztrált látogató
  - Hozzáférés a Biztosító termékeinek listájához
  - Regisztráció

## 1.2. Fő funkciók

- Felhasználó létrehozása
- Biztosítás létrehozása / törlése
- Díjrendezés
- Kárbejelentés
- Ügyfél értesítése

## 2. Biztosításkötés menete

Regisztrációt követően az ügyfélnek lehetősége nyílik biztosítási szerződés megkötésére, melyet egy űrlap kitöltésével tehet meg. Adatai megadása után a rendszer tájékoztató jelleggel feltünteti a befizetendő összeget.

Az Ügyfél értesítést kap a rendszertől a díjrendezéssel kapcsolatos tudnivalókról.

- utalás összege
- kedvezményezett neve
- kedvezményezett bankszámlaszáma
- közlemény

## 3. Díjrendezés

A biztosítási szerződések státusza "folyamatban" mindaddig, míg a díjrendezés meg nem történik. A feltételezett díjrendezést követően a Biztosító állíthatja be az ügyfél szerződésére vonatkozó rendezett / aktív szerződés státuszt.

## 4. Kárbejelentés

Minden rendezett / aktív státuszú biztosítási szerződéshez tartozik kárbejelentés felület. Az Ügyfél szabad fogalmazású levélként leírhatja a keletkezett kárt és annak becsült összegét. Nem nyújtható be a szerződéskötés időpontja előtt keletkezett kár.

## 4.1. Káresemény elbírálása

A Biztosító a saját felületén megjelenő kárbejelentéseket elfogadhatja vagy elutasíthatja, melyekről értesítést kap az Ügyfél.

## 5. Biztosítási szerződés megszűnése

## 5.1. Sztornó

Mindaddig, amíg a díjrendezés nem valósul meg, az Ügyfélnek lehetősége van a biztosítási szerződést sztornózni, mely ezáltal törlődik a szerződései közül.

## 5.2. Törlés

Rendezett / aktív státuszú szerződés törlését kizárólag a Biztosító hajthatja végre.
