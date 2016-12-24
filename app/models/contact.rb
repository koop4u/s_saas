class  Contact < ActiveRecord::Base
    validates :name, presence: true
    validate :email, presence: true
end