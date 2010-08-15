class FilesController < ApplicationController

  def new
  end

  def create
    render :text => "File:#{params[:file].original_filename}" if params[:file]
  end
end