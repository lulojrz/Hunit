module TestDeMisFunciones where

import Test.HUnit
import MisFunciones


-- Casos de Test

runFibo = runTestTT testsFibo

testsFibo = test [
    " Casobase 1 : fib 0" ~: (fib 0) ~?= 0 ,
    " Casobase 2 : fib 1" ~: (fib 1) ~?= 1 ,
    " Casorecursivo 1 : fib 2 " ~: (fib 2) ~?= 1
    ]

runAgenda= runTestTT testsAgenda

testsAgenda = test [
    "Casobase 1 : lista vacia" ~:(enLosContactos "vir" []) ~?= False,
    "Caso no esta en la agenda" ~:(enLosContactos "gaby" miagenda)~?= False,
    "caso no esta en la agenda, con un solo contacto" ~:(enLosContactos "gaby" miagenda_2)~?= False,
    "caso si esta" ~:(enLosContactos "vir" miagenda) ~?= True
    ]





runContacto = runTestTT testContacto

testContacto =test [
    "Casobase 1 : lista vacia" ~:(agregarContacto  nuevo []) ~?= [nuevo],
    "Caso no esta en la agenda" ~:(agregarContacto  nuevo miagenda) ~?= (miagenda : nuevo)
    ]

miagenda = [("vir","123"),("simon","1254125")]
miagenda_2= [("laura", "12541235")]
nuevo = ("anto","124124")