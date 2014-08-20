class MatchesController < ApplicationController
	def index
		@leauge = League.find(params[:league_id])
		# render plain: @leauge.matches
		@matches = @leauge.matches
	end
	def new
		@match = Match.new
		@league = League.find(params[:league_id])
	end
	def create
		@league = League.find(params[:league_id])
		@match = @league.matches.create(match_params)
		# render plain: @league.matches.create(match_params)
		# @leauge << @match
		redirect_to league_matches_path, notice: "Match added successfully!! "
	end
	def update
		@match = Match.find(params[:id])
		if @match.update(match_params)
			redirect_to league_matches_path, notice: "Match edited!! "
		end
	end
	def destroy
		@match = Match.find(params[:id])
		@match.destroy
		redirect_to league_matches_path, notice: "Match deleted!! "	
	end
	def edit
		@league = League.find(params[:league_id])
		@match = Match.find(params[:id]) 
	end

	private
	def match_params
    	params.require(:match).permit(:location, :sdate, :club1_id, :club2_id)
  	end
end
