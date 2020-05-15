class Checkout < ApplicationRecord
    validates :itemname, presence: true
    validates :itemquantitycount, presence: true
    validates :itemquantityweight, presence: true
    validates :checkoutdate, presence: true
    validates :staffid, presence: true
end
