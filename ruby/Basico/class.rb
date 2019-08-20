# Ruby é uma linguaem considerada puramente oritentada a objetos
# Porque no Ruby tudo são objetos

# Class possui atributos e metodos
#caracteristicas e Ações

# Carro (nome, marca, modelo, quantidade de portas, tec...)
# ligar, Buzinar, parar , etc...

class Carro
    attr_accessor :nome
    def ligar
        puts ' O carro esta pronto para iniciar o trajeto'
    end
end

civic = Carro.new 
civic.nome = 'Civic'

puts civic.nome
civic.ligar

# puts civic.class 

