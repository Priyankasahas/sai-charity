class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.column :email, 'varchar(255)', null: false
      t.column :first_name, 'varchar(255)', null: false
      t.column :last_name, 'varchar(255)', null: false
      t.column :password_digest, 'varchar(255)', null: false
    end
  end

  def down
    def down
    drop_table :users
  end
  end
end
