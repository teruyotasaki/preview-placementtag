class PreviewPlacementtagsController < ApplicationController
  def index
  end

  #def import
  #  # fileはtmpに自動で一時保存される
  #  #Product.import(params[:file])
  #  redirect_to view_path, notice: params[:file]
  #end

  def view
  end



  def downloadcsv
    file_name="sample.csv"
    filepath = Rails.root.join('public',file_name)
    stat = File::stat(filepath)
    send_file(filepath, :filename => file_name, :length => stat.size)
  end



end
