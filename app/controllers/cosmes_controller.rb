class CosmesController < ApplicationController
  def index
    @cosmes = Cosme.all
  end
end
