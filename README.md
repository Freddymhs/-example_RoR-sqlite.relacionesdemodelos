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
      rails generate model Computer  marca:string (model => singular con Camelcase)
      rails db:migrate  || rails db:rollback
      rails generate  migration  add_hubusbid_to_peripherals   hub_usb:references  
                                [nombremigracion_en_PLURALs]  [modelo_id:tipodedato]
                                   [tabla modificada]           [hacia que tabla]
                               
     
      revisar el campo de la migracion por si necesita datos por default u no es un 1aN o algo mas.
      CONFIGURAR ASOCIACIONES DE LOS MODELOS => has_many o belongs_to :modelo(singular o plural) 
       
end
  







