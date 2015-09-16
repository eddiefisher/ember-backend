class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :user_color
      t.integer :sessions_alive_count
      t.string :ip_address
      t.string :name
      t.string :os_name
      t.string :logged_users
      t.string :user_accounts
      t.string :info
      t.text :comment
      t.string :action_status

      t.timestamps null: false
    end
  end
end
