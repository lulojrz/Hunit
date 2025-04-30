enLosContactos ::Nombre ->ContactosTel ->Bool
enLosContactos _ [] = False

enLosContactos nombre ((contactoNombre, _): contactos) = nombre == contactoNombre || enLosContactos nombre contactos
