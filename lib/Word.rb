class Word #this class represents a word in a parsed sentence

	attr_accessor :id, :value, :tag

	def initialize(id, value, tag) #constructor
		@id = id
		@value = value
		@tag = tag
	end

	def to_s #to string
		output = value + "/" + tag #i decided not to output the ID as it made it too cluttered and you can find the ID by counting anyway
	end

end
