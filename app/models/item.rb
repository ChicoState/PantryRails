class Item < ActiveRecord::Base
    validates :name, presence: true
    validates :donor, presence: true
    validates :quantity, presence: true
    validates :received, presence: true
    validates :expiry, presence: true
    validates :price, presence: true
end
