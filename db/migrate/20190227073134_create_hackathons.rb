class CreateHackathons < ActiveRecord::Migration[5.2]
  def change
    create_table :hackathons do |t|
      t.string :team_name , null: false
      t.string :leader_name , null: false
      t.string :team_members_number
      t.string :team_member_details
      t.string :contact_number , null: false
      t.string :email_id , null: false

      t.timestamps
    end
  end
end
