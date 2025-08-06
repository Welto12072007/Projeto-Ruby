class Usuario
    attr_writer :senha

   def autenticar(senha)
         if senha == @senha 
            "Acesso permitido"
         else
          "acesso negado"
         end
   end
end

u = Usuario.new
u.senha = "123456"
# puts u.senha 
puts u.autenticar("123456")