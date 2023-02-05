class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: {unique: true} # email не дожен быть пустым и повторяться, гарантируется на уровне бд
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
