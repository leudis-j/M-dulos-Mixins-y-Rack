class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(filename = 'notas.txt')
    File.readlines(filename)
  end
end

alumnos = []
Alumno.read_file().each do |alumno|
  alumnos << Alumno.new(*alumno.split(', '))
end

print alumnos
