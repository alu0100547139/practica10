Nodo = Struct.new(:value, :next, :prev)

class Lista

include Enumerable

	attr_accessor :head, :tail	

	def initialize
		@head=nil
		@tail=nil	
	end
# Metodo each

	def each
		if(@tail!=nil)
			@aux=@tail
				while (@aux!=nil)
					yield(@aux.value)
					@aux=@aux.next
				end
		end
	
	end
	

# Metodo para insertar por el principio

	def push(nodo)
		if(@head == nil)
			@head=nodo
			@tail=nodo
		elsif (@head == @tail)
			@tail=nodo
			nodo.next = @head
			@head.prev = nodo
		else
			nodo.next=@tail
			@tail.prev= nodo
			@tail=nodo
		end
		return true
	end

# Metodo para extraer por el principio 

	def pop
		if(@head == nil)
			raise ArgumentError.new('No hay elementos para extraer')
			return false
			
		elsif(@head == @tail)
			@tail=nil
			@head=nil
			return true
			
		else
			@tail=@tail.next
			@tail.prev=nil
			return true
			
		end
	end
	
# Metodo para extraer por el final
	
	def extract
		if(@head == nil)
			raise ArgumentError.new('No hay elementos para extraer')
			return false
		elsif(@head == @tail)
			@tail=nil
			@head=nil
			return true
		else
			@head=@head.prev
			@head.next=nil
			return true
		end
	end
	
# Metodo para insertar por el final

	def insert(nodo)
		
		if(@head == nil)
			@head=nodo
			@tail=nodo
		elsif (@head == @tail)
			@head=nodo
			@head.prev=@tail
			@tail.next=@head
		else
			@head.next=nodo
			nodo.prev=@head
			@head=nodo
		end
		return true
	end
	
end
