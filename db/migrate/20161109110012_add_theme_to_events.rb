class AddThemeToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :theme, :string
  end
end
