class ApiController < ApplicationController
  def parse
  	if params[:input].length <251 && !params[:input].empty?
  		input = params[:input]
  		options = params[:options]
  		if options == "tree"
  			tree = $parser.gettree(input)
  			output = "var cback =" + params[:jsoncallback] +"; cback(" + tree.to_json + ");"
  		else
			sentence = $parser.getparsedsentence(input)
			output = "var cback =" + params[:jsoncallback] +"; cback(" + sentence.to_json + ");"
		end
  		send_data(output, :type => :json)
  	end
  	
  end

end
