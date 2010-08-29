class Wordtree

	attr_accessor :id, :value, :children
	
	def initialize(stanfordtree, id)
		@id = id

		numchildren = stanfordtree.numChildren()
		for i in 0..(numchildren - 1)
			puts stanfordtree.children[i]
		end
		@value = stanfordtree.value()
		@children = Array.new
		
		for i in 0..(numchildren - 1)
			#puts 'LOOP'
			stanfordchild = stanfordtree.getChild(i)
			@children[i] = Wordtree.new(stanfordchild, id + 1)
		end
	end

#	def to_s(output)
#		if output.nil?
#			output = String.new
#		end
#
#		output = output + " " + value + " \n"
#		for i in 0..(children.length - 1)
#			output = children[i].to_s(output)
#		end
#
#		output
#	end


end
