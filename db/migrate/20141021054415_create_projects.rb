class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.date :due_date
      t.float :payment_amount
      t.string :name
      t.text :description
      t.string :contact_info
      t.string :developer_type

      t.timestamps
    end
  end
end
