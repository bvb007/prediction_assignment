class LeaguesController < ApplicationController
	def index
		@leagues = League.all
	end
	def new
		@league = League.new
	end
	def create
		@league = League.new(league_params)
		@league.save
		redirect_to leagues_path, notice: "League added successfully!! "
	end
	def update
		@league = League.find(params[:id])
		if @league.update(league_params)
			redirect_to leagues_path, notice: "League edited!! "
		end
	end
	def destroy
		@league = League.find(params[:id])
		@league.destroy
		redirect_to leagues_path, notice: "League deleted!! "	
	end
	def edit
		@league = League.find(params[:id]) 
	end

	private
	def league_params
    	params.require(:league).permit(:name, :location, :sdate, :edate)
  	end
end