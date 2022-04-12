class AddNullFalseStraw < ActiveRecord::Migration[6.1]
  #validacion a nivel de base de datos
  def change
    change_column_null :strawberries, :title, false
    change_column_null :strawberries, :opinion,false
  end
end
