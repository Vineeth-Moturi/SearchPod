class User < ApplicationRecord
    has_many :todo_lists#, class_name: "todo_list", foreign_key: "reference_id"

    validates :username, presence:true, uniqueness:true
    validates :email, presence:true, uniqueness:true
    validates :password, presence:true, uniqueness:true
end
