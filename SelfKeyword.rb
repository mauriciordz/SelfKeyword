## Lunes 13 de Junio del 2016
## Domingo y Mauricio

puts "self es igual a: #{self}"
## impirme: "self es igual a: main"

## Self en tres diferentes contextos
## Ejemplo 1
class DummyClass
  puts "Esto esta corriendo cuando se define la clase"
  puts "En este contexto self es igual a: #{self}"
end
## imprime: "En este contexto self es igual a: DummyClass"

## Ejemplo 2
class DummyClass

    def intance_method
        puts "Dentro de un método de instancia"
        puts "En este contexto self es igual a: #{self}"
    end
end

dummy_class = DummyClass.new()
puts dummy_class.intance_method
## imprime: "En este conexto sel es igual a:  #<DummyClass:0x007fa2ec02fc60>" .. porque es alli donde está guardada

## Ejemplo 3
class DummyClass

    def self.class_method ## esta es la forma para crear un metodo de clase
        puts "Dentro de un método de clase"
        puts "En este contexto self es igual a: #{self}"
    end
end

puts DummyClass.class_method   
## imprime: "En este contexto self es igual a: DummyClass".. estamos llamado un metodo de clase 

