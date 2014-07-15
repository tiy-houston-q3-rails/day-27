class PagesController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def one
    render :smart
  end

  def two
    render :smart
  end

  def three
    render :smart
  end
end
