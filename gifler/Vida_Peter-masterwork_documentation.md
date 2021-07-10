# Webshop

Általános célú webáruház.

## Felhasználói típusok

 - **admin** - backenden mindenhez van joga, 
- **regisztráció nélküli látogató** - frontenden szörfölhet, Bevásárlókocsiba pakolhat, de vásárlás előtt szembesül a ténnyel, be kell regisztrálni. 
- **regisztrált látogató** - frontenden szörfölhet, wishlistet készíthet, és vásárolhat.
- **vásárlói klub tag** - vagyis "regisztrált látogató extended", aki bizonyos kategóriák termékeit más áron kapja.

## Frontend felépítése
A termékek kategóriákba rendezve jelennek meg.  Vásárlói klub tagok számára a diszkont ár jelenik meg.

## Backend felépítése

 - A backend és a frontend REST API-kon keresztül kommunikál, (node.js és express.js). 
- Adattárolás: [MongoDB Atlas](https://www.mongodb.com/cloud/atlas) Database.

## Vásárlói klub
Regisztrált felhasználó egyes kategóriákban külön-külön megvásárolhatja a klub tagságot egy évre. A vételár függ:
- mióta tag -- ha tag egyáltalán -- a vásárló
- az előző évi vásárlások összege abban a kategóriában

A "**My account**" oldal kiemelt fontosságú, itt lehet megtekinteni a vásárlói klub tagság részleteit: 
- melyik kategóriára érvényes, 
- mennyi kedvezmény jár, 
- mekkora összegben vásárolt a tag adott évben... 
- mikor jár le a tagság
- új tagság ára kategóriánként