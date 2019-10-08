class Add < ActiveRecord::Migration[5.2]
  def change
    add_column :registers, :bug, :boolean
  end
end
