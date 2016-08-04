class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string :name, null: false, default: ""
			t.string :image
			t.string :image
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt

			#外部認証に使う
			t.string :token, null: false, default: ""

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
