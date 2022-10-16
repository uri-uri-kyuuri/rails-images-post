class AddNicknameToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :nickname, :string
  end
end
