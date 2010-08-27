class Parser
	include Java
	require 'stanford-parser/stanford-parser.jar'
	include_class 'edu.stanford.nlp.parser.lexparser.LexicalizedParser'
    include_class 'edu.stanford.nlp.trees.Tree'
    require 'Word.rb'
    require 'Sentence.rb'


    def initialize #creates a new parser
		@parser = LexicalizedParser.new("/home/andrew/development/naturalparser/lib/stanford-parser/englishPCFG.ser.gz") #relative addresses don't work here, so I always have to remember to change the path when deploying, any way aroun this?
    end

    def getparsedsentence(input) #takes a sentence and returns a parsed sentence object ('Sentence.rb')
    	@parser.parse(input) #loads the input into the parser
    	@tree = @parser.getBestParse #gets the statistically best parse from the parser

		words = Array.new

		s = @tree.taggedYield() #gets a stanford sentence object from the parser
		x = s.size - 1
    	for i in (0..x) # iterates through the sentence to create an array of words
			w = s.get(i)
			words[i] = Word.new(i, w.value, w.tag)
		end

		s = Sentence.new(words) #creates the ruby sentence object ('Sentence.rb') from the word array
    end

    def getparsedstring(input) #returns a string representing a parsed sentence
    	s = getparsedsentence(input) 
    	s.to_s
    end

    
    

end
