class CreateExpenseLists < ActiveRecord::Migration
  def change
    create_table :expense_lists do |t|

      t.timestamps
    end
  end
end
