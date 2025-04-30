module MisFunciones where

type Texto = [Char]
type Nombre = Texto
type Telefono = Texto
type Contacto = (Nombre, Telefono)
type ContactosTel = [Contacto]


fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

enLosContactos ::Nombre ->ContactosTel ->Bool
enLosContactos _ [] = False

enLosContactos nombre ((contactoNombre, _): contactos) = nombre == contactoNombre || enLosContactos nombre contactos



agregarContacto :: Contacto -> ContactosTel -> ContactosTel 
agregarContacto unContacto [] = [unContacto]
agregarContacto (nuevoNom,nuevoTel) ((contactoNombre,contactoTel):miagenda) | (nuevoNom ) == (contactoNombre) = ((contactoNombre,nuevoTel):miagenda)
                                                     | otherwise = (contactoNombre,contactoTel) : (agregarContacto (nuevoNom,nuevoTel) miagenda)
