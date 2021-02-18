https://www.youtube.com/watch?v=DAjfsW4gqGo. Ejemplo de relación en ORM rail console
las entidades estan mal pero me sirven de practica :)

# README

practica de relaciones en la base de datos usando el orm(active records) de ruby on rails.

# bajo esta idea quiero practicar uso de ORM.
```
un 'computer' tiene conectado un 'hub usb' y este tiene conectado un 'keyboard' y un 'mouse'.
'computer' tiene conectado un Protector pero la Protector podria conectar/alimentar/proteger a mas 'computer's.
```
Computer(Computers) 'Protector_Computer'  Protector
Hub_Usb(Hub_Usbs)  Peripheral(Peripherals)'Mouse,keyboard'

# practica

- voy a crear un controllador home index para cargar mi sitio y redireccionar al crud

- voy a crear los modelos y conectarlos
```
primero : Hub_Usb y  Periferal 
segundo : Computer y Hub_Usb
tercero : Computer y [Computer_Protector] y Protector 
```
- voy a crear el crud del inventario para controlarlo y probar

# guia de migraiciones y relaciones de tablas
rails g contrller Home index

while (!termine)
      #generar modelos en base a las tablas  (model => singular con Camelcase)  (tabla => hub_usbs )(model => HubUsb)(orm=>.hub_usb)
      rails generate model Hub_Usb  atributo:type
      rails db:migrate  || rails db:rollback 
      rails generate migration addIdHubUsb_To_peripherals      hub_usb:references  (peripheral tendra fk de hub_usb) (usar nombre de las tablas)(plur o singl
                               [nombreMigracion_tabla's]       [campo:tipodedato]
                                   [tabla a modificar]          [que se agregara]
      revisar la nueva migracion y congiura asociaciones de modelos , [has_many :tabla][belongs_to :tabla][has_one :tabla] :tabla(singular o plural)
      rails db:migrate  || rails db:rollback
end
      revisar el nuevo SCHEMA y podre probar su relacion funcional si esta bien ASOCIADA su relacion en los modelos correspondientes.
      
      testeando en ORM :
      p = Peripheral.last() //obtiene el ultimo.  
      p.hub_usb             //obtiene el elemento asociado a este // accede nombre de tabla?







<!-- RELACIONES DE ENTIDADES  -->

https://www.youtube.com/watch?v=dcHotq-mFtQ. probando de aca

1
//migraciones.  // migraciones y tablas
rails generate CreateJoinTable[NameModel1][NameModel2] [tabla1] [tabla2]
rails g migration CreateJoinTableProductsSuppliers products suppliers
rails generate migration CreateJoinTableComputersProtectors computers protectors
//la relacion de los modelos

-desconementar el codigo en su migracion
   t.index %i[computer_id protector_id]
   t.index %i[protector_id computer_id]

2 en los modelos principales
has_and_belongs_to_many :computers //When you create a has_and_belongs_to_many relationship, you only need a join table (no model).
has_and_belongs_to_many :protectors


3 creando modelo no es necesario gracias al active record createjointable :D

probando N to N
// entidades
Computer y Protector



<!-- INSERT DE DATOS  -->

agrgar campo con update a 2 tablas :
contenedor = Peripheral.create()
contenido = HubUsb.create()
contenedor.update(HubUsb: [contenido])




N to N
herman = Author.create name: 'Herman Melville'
moby = Book.create title: 'Moby Dick'
herman.books << moby


comp = Computer.create({marca:'IxOP',pulgadas:'22',so:'nuevo'})
prot = Protector.create({watts:'9100',va:'1200'})
comp.protector << prot

c = Computer.last
p = Protector.last
c.protector << p