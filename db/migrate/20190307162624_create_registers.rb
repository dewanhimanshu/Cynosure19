class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :email
      t.string :college
      t.string :number
      t.boolean :hunt
      t.boolean :coding
      t.boolean :quiz
      t.boolean :web
      t.boolean :hunt

      t.timestamps
    end
  end
end
