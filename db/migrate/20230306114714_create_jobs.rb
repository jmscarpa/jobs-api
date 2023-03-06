class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.string :company_name, null: false
      t.string :company_country, null: false
      t.integer :role_type_id, null: false
      t.text :description, null: false
      t.float :salary, null: false, default: 0
      t.boolean :remote, null: false, default: false

      t.timestamps
    end
  end
end
