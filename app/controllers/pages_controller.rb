class PagesController < ApplicationController

  def index
    render layout: 'unauthenticated'
  end

  def home
  end

end
