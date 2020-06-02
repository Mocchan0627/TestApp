class User < ApplicationRecord
    has_secure_password
    validates :name, {presence: true, uniqueness: true}
    validates :email, {presence: true, uniqueness: true}

    def task
        return Task.where(user_id: self.id)
    end
end