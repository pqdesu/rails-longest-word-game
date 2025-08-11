class GamesController < ApplicationController

  def new
    @letters = []
    10.times {@letters << ('A'..'Z').to_a.sample}
  end

  def score
    params[:word].each_char do |char|
      if params[:letters].include?(char.upcase)
        @score = "It contains the letters"
      else
        @score = "Does not contain the letters"
      end
    end
  end
end
