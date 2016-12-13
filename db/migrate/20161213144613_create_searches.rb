class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :q
      t.string :ip_addr

      t.timestamps
    end
  end
end
