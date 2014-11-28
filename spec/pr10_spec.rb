#encoding: utf-8
require 'practica10.rb'
require 'spec_helper.rb'
require 'test/unit'
#require 'coveralls.yml'



describe Lista do
    before :each do
        @L1=Lista.new
        @P1=Sel_multiple.new("¿Cual es la salida del sig codigo ruby? ","c",["#<Xyz:0xa020302>","nil","0","ninguna"],'2')
		@P2=Sel_simple.new("La siguiente definicion de un hash es valida?","c","1")
		@P3=Sel_multiple.new("Cual es la salida del siguiente codigo=","c",["1","bob","Hey","Ninguna"],"2")
		@P4=Sel_multiple.new("¿Cual es el tipo del objeto en el siguiente codigo Ruby?","c",["instancia de Class","Constante","Objeto","Ninguna"],"3")
        @P5=Sel_simple.new(" Es apropiado que una clase Tablero herede de una clase Juego","c","2")
       
        @N1=Nodo.new(@P1,nil,nil)
        @N2=Nodo.new(@P2,nil,nil)
        @N3=Nodo.new(@P3,nil,nil)
        @N4=Nodo.new(@P4,nil,nil)
        @N5=Nodo.new(@P5,nil,nil)
        
        @L1.insert(@N1)
        @L1.insert(@N2)
        @L1.insert(@N3)
        @L1.insert(@N4)
        @L1.insert(@N5)
   
   
		@Exa=ExamenGR.new(@L1)  
		
    end
# Prueba para el metodo invertido

		it " Existe un metodo para invertir un examen" do
			@L2 = Lista.new
			@L2.insert(@N5)
    		@L2.insert(@N4)
        	@L2.insert(@N3)
        	@L2.insert(@N2)
        	@L2.insert(@N1)
			expect(@Exa.invertir_examen).to eq @L2
		end


# Pruebas para la clase Examen_Grafico.
		it " Existe una clase examen" do
			expect(@Exa.class).to eq ExamenGR
		end
		
		it " La clase examen tiene una lista, y contadores de respuestas bien y mal" do
		
			expect(@Exa.lista.class).to eq(Lista)	
			expect(@Exa.bien.is_a?Integer).to eq (true)
			expect(@Exa.mal.is_a?Integer).to eq (true)
		end
		
		it " La clase examen realiza un examen completo" do
		
				expect(@Exa.hacer_examen(["c","c","c","c","c"])).to eq(true)
				
		end
	
		it " La clase examen devuelve si estas aprobado" do
				@Exa.hacer_examen(["c","c","c","c","c"])
				expect(@Exa.mostrar_aprobado).to eq(true)

		end
		
		it "El examen esta suspendido" do	
				@Exa.hacer_examen(["a","a","a","a","a"])
				expect(@Exa.mostrar_aprobado).to eq(false)
		end

	
#pruebas para la clase sel_simple y sel_multiple con comparable.
	
	it " pertenece a la clase sel_simple" do
	
		expect(@P2.class) ==  Sel_simple
		
	end	
	it " pertenece a la clase sel_simple" do
	
		expect(@P1.class) ==  Sel_multiple
		
	end
	
	it "Comparar P2 < P5" do
	
		expect(@P2<@P5).to eq (true)
	
	end
	
	it "Comparar P1 == P3" do
	
		expect(@P1==@P3).to eq (false)
	
	end
	
	it "Comparar P2 <= p5" do
		
		expect(@P2<=@P5).to eq (true)
	end
		
	it " Metodo between?  " do

		expect(@P2.between?(@P3,@P4)).to eq(true)
	end		
# Pruebas para la clase lista	
	      
    
	it " Existe una instancia de la clase lista"do
		
		expect(@L1.is_a?Lista).to eq (true)
		
	end
	
	
	 it " Se puede insertar en una lista por el principio" do
	 	
		 expect(@L1.push(@N1)).to eq (true)
		 
	 end
	 
    
	it " Se puede insertar en una lista por el final" do
		
		 expect(@L1.insert(@N2)).to eq (true)
		 
	 end
    
	it " Se puede extraer de una lista por el principio" do
		
	       	expect(@L1.pop).to eq (true)
       	
	end
	
    
	 it " Se puede extraer de una lista por el final"do
	 	
        	expect(@L1.extract).to eq (true)
	end
    	

#Pruebas para la clase lista, con modulo enumerable

	it " Maximo de la lista " do
	
		expect(@L1.max).to eq(@P5)
	end

	it " Cuenta de la lista " do
		
		expect(@L1.count).to eq(5)
	end

	it " Minimo de la lista " do

		expect(@L1.min).to eq(@P3)
	end
	
	it " Ordenacion, Metodo Sort" do
		
		@L2=@L1.sort
		expect(@L1.sort).to eq(@L2)
	
	
	end
	

 

end
  


