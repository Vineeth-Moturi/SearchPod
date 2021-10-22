class TodoList < ApplicationRecord
  belongs_to :user
  validates :date , presence:true
  validates :item , presence:true
end
