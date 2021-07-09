# Jógaóra bejelentkezési alkalmazás

## Alkalmazás áttekintése

Az alkalmazás segítségével jógastúdiók órákat hirdethetnek meg, amelyekre a jógagyakorlók jelentkezni tudnak. A gyakorló
több szempont alapján tudja szűrni a stúdiók által meghirdetett órákat, így ki tudja választani a számára
legmegfelelőbbet. Tárolja a gyakorlási előzményeket, így a gyakorló nyomon tudja követni saját fejlődését.

## Alkalmazás működése

### Struktúra

Minden stúdiónak van egy teremvezetője. Egy stúdióban oktathat több oktató, és egy oktató oktathat több stúdióban.
Minden stúdiónak van legalább egy terme, de lehet több is, ahol folyhatnak párhuzamosan jógaórák. Az órákat heti
ismétlődéssel adhatják meg a stúdiók, de az aktuális heti alkalom módosítására külön is van lehetőség. Egy teremben két
megtartott óra között legalább 15 perc szünetnek el kell telnie. Az alkalmazás tárolja az adott terem kapacitását, és ha
a gyakorlók száma elérte a maximumot, több gyakorló nem tud jelentkezni az órára.

### Felhasználók, jogkörök

Az alkalmazás felhasználója lehet teremvezető, oktató vagy gyakorló.

#### Teremvezető

A teremvezető hozzá tud adni új órát a hozzá tartozó stúdió valamelyik terméhez, valamint annak óráit tudja módosítani,
törölni vagy lemondani (csak az aktuális heti időpont kerül törlésre).

#### Gyakorló

A gyakorló jelentkezni tud a meghirdetett órákra. Ezeket város, óratípus kezdési időpont, stúdió vagy oktató alapján
tudja szűrni. A gyakorló törölheti is a jelentkezését az óra megkezdése előtt 60 percig. A jógaórára való jelentkezés
mindig csak az adott hétre lehetséges. A gyakorlónak lehetősége van lekérdezni a korábbi gyakorlásait egy évre
visszamenőleg.

#### Oktató

Az oktató rögzíti a rendszerben, hogy a bejelentkezett gyakorló valóban megjelent-e az órán.
