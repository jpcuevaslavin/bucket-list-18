class UserTodo < ApplicationRecord
  belongs_to :user
  belongs_to :todo
  validates :user_id, uniqueness: { scope: :todo_id }
end
