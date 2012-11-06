class FilesController < ApplicationController


  def index

    if params[:dir]
      @files = Dir.glob("public/files/#{params[:dir]}/*")
    else
      @files = Dir.glob("public/files/*")
    end

  end

end
