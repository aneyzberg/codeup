class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|
      t.string :username
      t.text :bio
      t.string :developer_type
      t.references :user, index: true

      t.timestamps
    end
  end
end
