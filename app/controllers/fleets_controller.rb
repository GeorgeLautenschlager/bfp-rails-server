class FleetsController < ApplicationController
  def index
    render Fleet.all
  end
end
