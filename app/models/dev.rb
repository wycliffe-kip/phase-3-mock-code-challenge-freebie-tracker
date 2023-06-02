class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.exists?(name: item_name)
    end 

    def give_away(dev, freebie)
        if freebies.include?(freebie)
        freebie.dev = dev 
        freebie.save
    end 

end

