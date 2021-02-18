https://www.youtube.com/watch?v=DAjfsW4gqGo. Ejemplo de relación en ORM rail console
las entidades estan mal pero me sirven de practica :)

# README

practica de relaciones en la base de datos usando el orm(active records) de ruby on rails.

# bajo esta idea quiero practicar uso de ORM.
```
un 'computer' tiene conectado un 'hub usb' y este tiene conectado un 'keyboard' y un 'mouse'.
'computer' tiene conectaod una UPS pero la ups podria conectar/alimentar/proteger a mas 'computer's.
```
Computer(Computers) 'Ups_Computer'  Ups
Hub_Usb(Hub_Usbs)  Peripheral(Peripherals)'Mouse,keyboard'

# practica

- voy a crear un controllador home index para cargar mi sitio y redireccionar al crud

- voy a crear los modelos y conectarlos
```
primero : Hub_Usb y  Periferal 
segundo : Computer y Hub_Usb
tercero : Computer y [Computer_Ups] y Ups 
```
- voy a crear el crud del inventario para controlarlo y probar

# guia de migraiciones y relaciones de tablas
rails g contrller Home index

while (!termine)
      #generar modelos en base a las tablas  (model => singular con Camelcase)  (tabla => hub_usbs )(model => HubUsb)(orm=>.hub_usb)
      rails generate model Hub_Usb  atributo:type
      rails db:migrate  || rails db:rollback 
      rails generate migration addIdComputer_To_hub_usbs      computer:references
      rails generate migration addIdHubUsbTo_peripherals      hub_usb:references  (peripheral tendra fk de hub_usb) (usar nombre de las tablas)(plur o singl
                               [nombreMigracion_tabla's]       [campo:tipodedato]
                                   [tabla a modificar]          [que se agregara]
      revisar la nueva migracion y congiura asociaciones de modelos , [has_many :tabla][belongs_to :tabla][has_one :tabla] :tabla(singular o plural)
      rails db:migrate  || rails db:rollback
end
      revisar el nuevo SCHEMA y podre probar su relacion funcional si esta bien ASOCIADA su relacion en los modelos correspondientes.
      
      testeando en ORM :
      p = Peripheral.last() //obtiene el ultimo.  
      p.hub_usb             //obtiene el elemento asociado a este // accede nombre de tabla?


agrgar campo con update a 2 tablas :
contenedor = Peripheral.create()
contenido = HubUsb.create()
contenedor.update(HubUsb: [contenido])


addIdComputerTo_hub_usbs computer:references