https://www.youtube.com/watch?v=DAjfsW4gqGo. Ejemplo de relación en ORM rail console

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
      rails generate migration addIdHubUsbTo_peripherals      hub_usb:references  (peripheral tendra fk de hub_usb)
                               [nombremigracion_en_PLURAL's] [modelo_id:tipodedato]
                                   [tabla modificada]         [que se agregara]
      revisar la nueva migracion y congiura asociaciones de modelos , [has_many][belongs_to][has_one] :modelo(singular o plural)
      rails db:migrate  || rails db:rollback
      

end

  la migracion crea el esquema
  Peripheral.new(id: 1, nombre: "s", hub_usb_id: 1)




 rails generate model Peripheral  nombre:string marca:string inalambrico:string
 rails generate model Hub_Usb  marca:string nropuertos:string 
  #revisar migracion  // estructura de datos simple
 rails db:migrate
 rails generate migration addIdHubUsbTo_peripherals hub_usb:references   (peripherals tendran 1 hub_usb)
 #revisar migracion    // add_reference :peripherals, :hub_usb, null: false, foreign_key: true
 rails db:migrate
 #revisar asociacion en modelo
 
 


extra insertar datos en multiples tablas :) (ejemplo 1 a n)
Peripheral.create({           nombre:"raton",        inalambrico:"nope" ,      hub_usb_id:    })

qt = Peripheral.last()
qt.hub_usb

 user1 = HubUsb.create()
 user1.Peripheral   , alrevez?


 Peripheral.create()           // necesita hub_usb_id

contenedor = Peripheral.create()
contenido = HubUsb.create()

contenedor.update(HubUsb: [contenido])








