class Freebie < ActiveRecord::Base
    belongs_to :dev 
    belongs_to :company

    def print_details
       print_d = "#{dev.name} owns a #{item_name} from #{company.name}"
       puts print_d
    end 
end

