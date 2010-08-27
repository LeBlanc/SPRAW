class Sentence #this class represents a parsed sentence
	require 'Word.rb'
	attr_accessor :words #the sentence is made up of an array of words

	def initialize(words) #creates new sentence from an array of words
		@words = words
	end

	def to_s #returns a string representing a parsed sentence
		output = String.new
		for i in 0...@words.length #iterates through the words to create a string
			output = output + @words[i].to_s + " "
		end
		output
	end

end
