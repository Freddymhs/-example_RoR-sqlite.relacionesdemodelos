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

# guia
rails g contrller Home index

while (!termine)
      rails generate model Hub_Usb  marca:string (model => singular con Camelcase)  (tabla => hub_usbs )(model => HubUsb) (orm => ????????hub_usb????????)
      rails db:migrate  || rails db:rollback
      rails generate migration add_hudusbid_to_peripherals hub_usb:references (a periferico se le agregara un id FK de otro modelo)
                                [nombremigracion_en_PLURALs]  [modelo_id:tipodedato]
                                   [tabla modificada]           [hacia que tabla]
      revisar el schema nuevo que va a modificar la tabla con migracion :)
      configurar asociaciones delos modelos => [has_many][belongs_to][has_one] :modelo(singular o plural) // cmo deshacerlo facil? -_-
      rails db:migrate  || rails db:rollback
      Peripheral.new(id: 1, nombre: "s", hub_usb_id: 1)

end
  


 rails generate model Peripheral  nombre:string marca:string inalambrico:string
 rails generate model Hub_Usb  marca:string nropuertos:string 
 rails db:migrate
 rails generate migration addIdHubUsbTo_peripherals hub_usb:references  (peripherals tendran 1 hub_usb)
 #revisar migracion
 rails db:migrate
 #revisar asociacion en modelo
 
 




extra insertar datos en multiples tablas :) (ejemplo 1 a n)
Peripheral.create({           nombre:"raton",        inalambrico:"nope" ,      hub_usb_id:    })

contenedor = Peripheral.create()
contenido = HubUsb.create()

contenedor.update(HubUsb: [contenido])








