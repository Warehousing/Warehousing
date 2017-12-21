# Warehousing

Mod for Factorio. *Store **all** the things!* (We heard you like boxes, you packrat you!)


## News

[![GitHub release](https://img.shields.io/github/release/Anoyomouse/Warehousing.svg?label=current+version)]()
[![GitHub Release Date](https://img.shields.io/github/release-date/Anoyomouse/Warehousing.svg?label=released)]()

Go grab it now, or get it in game by searching for Warehousing.

### Latest

Now compatible with Factorio 0.15! Research requirements have changed, so be warned for new games.

### Previously

Warehouses were changed to 6x6 as per a suggestion, so if you are upgrading from a very old version of the mod it will make all existing warehouses potentially overlap and cause unknown issues. You have been warned! (If you've transitioned a steam power setup from Factorio 0.14 or below to 0.15, you know the pain.)

Factorio 0.12.18 allowed entity inventories to have scroll bars... Capacities were increased to take advantage of this. Please note that using significant numbers of warehouses _will_ cause a significant performance decrease. (Entity update performance is directly related to inventory slot count, so more slots to process on each tick means it will take longer.)


## Description

Adds 6x6 warehouses that allow you to store a lot of items, and smaller (cheaper) 3x3 storehouses with less capacity.

Warehouses and storehouses also have logistic versions (passive provider, active provider, and storage), just like chests.

You can also attach red and green wires to the warehouses, and they'll attach to the correct points on the corner of the logistics warehouses.

---
No.|Warehouse|Storehouse
-|-|-
1.|Basic warehouse: 800 slots|Storehouse: 150 slots
&nbsp;|![Basic Warehouse][warehouse-basic]|![Basic Storehouse][storehouse-basic]
2.|Storage warehouse: 2000 slots|Storehouse: 300 slots
&nbsp;|![Storage Warehouse][warehouse-storage]|![Storage Storehouse][storehouse-storage]
3.|Passive provider warehouse: 800 slots|Storehouse: 150 slots
&nbsp;|![Passive provider warehouse][warehouse-passive-provider]|![Passive provider storehouse][storehouse-passive-provider]
4.|Active provider warehouse: 800 slots|Storehouse: 150 slots
&nbsp;|![Active provider warehouse][warehouse-active-provider]|![Active provider storehouse][storehouse-active-provider]
5.|Requester warehouse: 800 slots|Storehouse: 150 slots
&nbsp;|![Requester warehouse][warehouse-requester]|![Requester warehouse][storehouse-requester]

### Recipes
    
#### Basic warehouse / storehouse

Item|Qty
---|---:
Steel plates | 60
Iron plates | 100
Stone bricks | 25
Wooden chests | 10
![Basic Warehouse][warehouse-basic]

Item|Qty
---|---:
Steel plates | 20
Iron plates | 40
Stone bricks | 10
Wooden chests | 5
![Basic Storehouse][storehouse-basic]


#### Storage warehouse / storehouse

Item|Qty
---|---:
Basic warehouse|1
Iron plates|20
Storage logistic chest|1
Advanced circuits|5
Steel Chests|15
![Storage Warehouse][warehouse-storage]

Item|Qty
---|---:
Basic storehouse|1
Iron plates|5
Storage logistic chest|1
Advanced circuits|2
Steel Chests|5
![Storage Storehouse][storehouse-storage]

#### Passive provider warehouse / storehouse

Item|Qty
---|---:
Basic warehouse|1
Iron plates|20
Passive provider logistic chest|1
Advanced circuits|5
![Passive provider warehouse][warehouse-passive-provider]

Item|Qty
---|---:
Basic storehouse|1
Iron plates|5
Passive provider logistic chest|1
Advanced circuits|2
![Passive provider storehouse][storehouse-passive-provider]

#### Active provider warehouse / storehouse

Item|Qty
---|---:
Basic warehouse|1
Iron plates|20
Active provider logistic chest|1
Advanced circuits|5
![Active provider warehouse][warehouse-active-provider]

Item|Qty
---|---:
Basic storehouse|1
Iron plates|5
Active provider logistic chest|1
Advanced circuits|2
![Active provider storehouse][storehouse-active-provider]

#### Requester warehouse / storehouse

Item|Qty
---|---:
Basic warehouse|1
Iron plates|20
Requester logistic chest|1
Advanced circuits|5
![Requester warehouse][warehouse-requester]

Item|Qty
---|---:
Basic storehouse|1
Iron plates|5
Requester logistic chest|1
Advanced circuits|2
![Requester storehouse][storehouse-requester]


## Contributors

Graphics by **Nova Kast**, **please do not use without permission!** (If you ask, you can probably use the images. Also, if you need custom graphics we can cook these up too if needed! ;) PM Anoyomouse on the Factorio forums for permission/requests.)

Storehouses contributed by Hanniballo. Updates for Factorio 0.15 contributed by kingarthur, with integration help from dgw (joined as co-maintainer as of 0.0.13).

Translations kindly provided by the following people:

| <!--flag--> | Language |          Translator          |
|-------------|----------|------------------------------|
| :fr:        | French   | Hasturcraft                  |
| :ru:        | Russian  | apriori<br>Oceanel           |
| :poland:    | Polish   | diilmac                      |
| :de:        | German   | apcnc                        |
| :es:        | Spanish  | frenchiveruti                |
| :brazil:    | Brazil   | @RaphaelNeumann<br>@scarsick |
| :jp:        | Japanese | Quifon                       |


[warehouse-basic]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/warehouse-basic-shadow.png
[warehouse-storage]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/warehouse-storage-shadow.png
[warehouse-passive-provider]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/warehouse-passive-provider-shadow.png
[warehouse-active-provider]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/warehouse-active-provider-shadow.png
[warehouse-requester]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/warehouse-requester-shadow.png

[storehouse-basic]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/storehouse-basic.png
[storehouse-storage]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/storehouse-storage.png
[storehouse-passive-provider]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/storehouse-passive-provider.png
[storehouse-active-provider]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/storehouse-active-provider.png
[storehouse-requester]:https://raw.githubusercontent.com/Anoyomouse/Warehousing/master/graphics/entity/storehouse-requester.png
