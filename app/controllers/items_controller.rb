class ItemsController < ApplicationController


  def index
    if params[:dir]
      dir = CGI::unescape(params[:dir])
      dir = dir.gsub(/([\[\]\{\}\*\?\\])/, '\\\\\1')
      puts dir
      logger.info(dir)
      @files = Dir.glob("public/files/#{dir}/*")
    else
      @files = Dir.glob("public/files/*")
    end

      respond_to do |format|
        format.html
      end
  end

  def show
    @file = CGI::unescape(params[:id])
    @file = @file.gsub(/([\[\]\{\}\*\?\\])/, '\\\\\1')
    
    respond_to do |format|
      format.html
    end
  end

end
