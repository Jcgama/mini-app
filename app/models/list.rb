class List < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :user
    has_many :tasks
end
