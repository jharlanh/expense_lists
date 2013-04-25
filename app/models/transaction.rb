class Transaction < ActiveRecord::Base
  attr_accessible :amount, :expense_list_id, :name
  belongs_to :expense_list
end