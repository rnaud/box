class ItemsController < ApplicationController


  def index
    if params[:dir]
      @files = Dir.glob("public/files/#{params[:dir]}/*")
    else
      @files = Dir.glob("public/files/*")
    end

      respond_to do |format|
        format.html
      end
  end

  def show
    @file = params[:id]
    respond_to do |format|
      format.html
    end
  end

end
