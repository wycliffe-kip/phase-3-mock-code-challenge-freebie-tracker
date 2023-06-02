class Company < ActiveRecord::Base
    has_many :freebies 
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        freebie = Freebie.new(dev: dev, item_name: item_name, value: value)
        freebies << freebie
    end 

    def self.oldest_company 
        order(:founding_year).first
    end 
end
