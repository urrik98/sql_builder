class TablesController < ApplicationController
  def index
    @database = Database.find(params[:database_id])
    @tables = @database.tables
  end

  def show
    @table = Table.find(params[:id])
    @database = @table.database
    @columns = @table.columns.order('name ASC')
  end

  def new
    @database = Database.find(params[:database_id])
    @table = @database.tables.build
  end

  def create
    @database = Database.find(params[:database_id])
    @table = @database.tables.new(table_params)
    if @table.save
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def superlist
    @tables = Table.all
  end

  private

    def table_params
      params.require(:table).permit(:name, :tabletype, :description)
    end

end
