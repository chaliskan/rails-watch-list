class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
  @list = List.new(list_params)
  return redirect_to list_path(@list) if @list.save
end

  private

 def list_params
  params.require(:list).permit(:name, :image_url)
end
end
