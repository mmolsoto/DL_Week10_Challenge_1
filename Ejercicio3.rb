# Se tiene la clase Vehicle que recibe como argumento un modelo y
# un año. El método engine_start enciende el vehículo.
class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

# Se pide:

# Crear una clase Car que herede de Vehicle
class Car < Vehicle
  # El constructor de Car, además de heredar las propiedades de Vehicle,
  # debe incluir un contador de instancias de Car.
  def initialize(model, year)
    # heredado de Vehicle
    super
    @@countInst += 1
  end
  # Crear un método de clase en Car que devuelva la cantidad de instancias.
  def self.instances
    @@countInst
  end

  def engine_start
    # heredado de Vehicle
    super
    puts 'El motor se ha encendido!'
  end
end


# El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
# Instanciar 10 Cars.
# Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.
