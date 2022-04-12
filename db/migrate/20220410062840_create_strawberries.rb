class CreateStrawberries < ActiveRecord::Migration[6.1]
  def change
    create_table :strawberries do |t|
      t.string :title
      t.text :opinion

      t.timestamps
    end
  end
end
