class AddColumnTagToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs,:tags, :string, null: false, default: ""
  end
end
