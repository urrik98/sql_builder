class ColumnsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @database = Database.find(params[:database_id])
    @table = @database.tables.find(params[:table_id])
    @column = @table.columns.build
  end

  def create
    @table = Table.find(params[:table_id])
    @column = @table.columns.new(column_params)

    if @column.save
      @database = @table.database
      redirect_to database_table_path(@database.id, @table.id)
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

    def column_params
      params.require(:column).permit(:name, :datatype)
    end
end
