class CreateUserDevs < ActiveRecord::Migration
  def change
    create_table :user_devs do |t|
      t.string :username
      t.text :bio
      t.string :developer_type
      t.references :user, index: true

      t.timestamps
    end
  end
end
