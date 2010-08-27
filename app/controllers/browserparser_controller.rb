class BrowserparserController < ApplicationController


  def parse
  	unless params[:input].nil? || params[:input] == ""
		@outputstring = $parser.getparsedstring(params[:input])
		@outputwordtree = "Coming Soon!"
	else
		@outputstring = "[            ]"
		@outputwordtree = "[            ]"
  	end
  end

end
