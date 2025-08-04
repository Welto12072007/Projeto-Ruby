#!/usr/bin/env ruby

puts "=== DEMONSTRAÇÃO POO EM RUBY ==="
puts

# Conceitos Básicos
puts "1. CLASSES E ATRIBUTOS"
puts "-" * 30
require_relative 'src/conceitos_basicos/classes_e_atributos'
puts

puts "2. INSTÂNCIAS E CONSTRUTORES"
puts "-" * 30
require_relative 'src/conceitos_basicos/instancias_e_construtores'
puts

puts "3. ENCAPSULAMENTO"
puts "-" * 30
require_relative 'src/conceitos_basicos/encapsulamento'
puts

# Herança
puts "4. HERANÇA BÁSICA"
puts "-" * 30
require_relative 'src/heranca/heranca_basica'
puts

puts "5. HERANÇA MÚLTIPLA"
puts "-" * 30
require_relative 'src/heranca/heranca_multipla'
puts

# Polimorfismo
puts "6. POLIMORFISMO BÁSICO"
puts "-" * 30
require_relative 'src/polimorfismo/polimorfismo_basico'
puts

puts "7. DUCK TYPING"
puts "-" * 30
require_relative 'src/polimorfismo/duck_typing'
puts

# Tratamento de Exceções
puts "8. EXCEÇÕES PERSONALIZADAS"
puts "-" * 30
require_relative 'src/tratamento_excecoes/excecoes_personalizadas'
puts

# Exemplos Práticos
puts "9. SISTEMA BANCÁRIO"
puts "-" * 30
require_relative 'src/exemplos_praticos/sistema_bancario'
puts

puts "10. LOJA VIRTUAL"
puts "-" * 30
require_relative 'src/exemplos_praticos/loja_virtual'
puts

puts "11. BIBLIOTECA"
puts "-" * 30
require_relative 'src/exemplos_praticos/biblioteca'
puts

puts "=== FIM DA DEMONSTRAÇÃO ==="