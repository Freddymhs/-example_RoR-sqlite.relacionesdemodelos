# README

practica de relaciones en la base de datos usando el orm(active records) de ruby on rails.

# bajo esta idea quiero practicar uso de ORM.
```
un 'computer' tiene conectado un 'hub usb' y este tiene conectado un 'keyboard' y un 'mouse'.
'computer' tiene conectaod una UPS pero la ups podria conectar/alimentar/proteger a mas 'computer's.
```
Computer 'Ups_Computer'  Ups
Hub_Usb  Mouse   Keyboard

# practica

- voy a crear un controllador home index para cargar mi sitio y redireccionar al crud

- voy a crear los modelos y conectarlos
```
primero : Hub_Usb y  (Mouse,Keyboard)      
segundo : Computer y Hub_Usb
tercero : Computer y [Computer_Ups] y Ups 
```
- voy a crear el crud del inventario para controlarlo y probar
  








