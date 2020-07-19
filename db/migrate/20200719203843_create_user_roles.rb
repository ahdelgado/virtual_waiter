class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
      t.index [:user_id, :role_id], unique: true
      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
