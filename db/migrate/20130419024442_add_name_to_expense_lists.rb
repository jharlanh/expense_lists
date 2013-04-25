class AddNameToExpenseLists < ActiveRecord::Migration
  def change
    add_column :expense_lists, :name, :string
  end
end
