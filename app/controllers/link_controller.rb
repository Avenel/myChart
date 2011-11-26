class LinkController < ApplicationController

  def index
    @links = Link.all
  end

  

end
