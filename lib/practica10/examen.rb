#Clase examen
require 'test/unit'

class Examen

include Comparable

attr_accessor :preg, :c, :dif, :a, :datos_user

    def initialize(preg,c,a,dif)
        @preg=preg
        @c=c
        @a=a
	@dif=dif
    end

    def to_s
        @aux = ""
        @aux = @aux + "@a.each{ |i| print i}"
        "(#{@preg},#{@aux})"
    end

#	def <=>(other)
#		self.dif <=> other.dif
#	    
#	end
	

	def <=>(other)
	
      	@preg.size <=> other.preg.size
	      	
	end
	    
	def ==(other)
	    
	  @preg.size == other.preg.size && @preg == other.preg
	          
	end
	

   

  
end
