class DatabasesController < ApplicationController
  def index
    @databases = Database.all
  end

  def new
    @database = Database.new
  end

  def show
    @database = Database.find(params[:id])
  end

  def create
    @database = Database.new(database_params)

    if @database.save
      flash[:notice] = "New database saved to list"
      redirect_to databases_path
    else
      flash[:error] = "Something went wrong, check logs"
      redirect_to databases_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

    def database_params
      params.require(:database).permit(:name, :description)
    end
end
