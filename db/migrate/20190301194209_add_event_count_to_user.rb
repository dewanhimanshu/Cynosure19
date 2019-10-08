class AddEventCountToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :event1, :boolean , default:false
    add_column :users, :event2, :boolean , default:false
    add_column :users, :event3, :boolean , default:false
  end
end
