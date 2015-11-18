class CreateUsers < ActiveRecord::Migration

  def change
    create_table :users do |t|

      t.string :surname
      t.string :last_name
      t.string :user_type
      t.string :email
      t.timestamps null: false
    end
  end
end
