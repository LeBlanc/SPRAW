class ApiController < ApplicationController
  def parse
  	if params[:input].empty?
  		redirect_to :controller => 'documentation', :action => 'index'
  	end
  	if params[:input].length <251
  		input = params[:input]
  		options = params[:options]
		sentence = $parser.getparsedsentence(input)
		output = "var cback =" + params[:jsoncallback] +"; cback(" + sentence.to_json + ");"
  		send_data(output, :type => :json)
  	end
  	
  end

end
