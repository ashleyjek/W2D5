require_relative "List.rb"

class Item
    
    attr_reader :title, :description, :deadline

    def initialize(title, deadline, description)
        @title = title
        @deadline = Item.valid_date?(deadline)
        @description = description

    end


    def self.valid_date?(date)
        month = (0..12).to_a
        day = (0..31).to_a
        year = (1900..2023).to_a
        if !year.include?(date[0..3].to_i)
            raise "invalid date format!"
            return false
        elsif !month.include?(date[5..6].to_i)
            raise "invalid date format!"
            return false
        elsif !day.include?(date[8..9].to_i)
            raise "invalid date format!"
            return false
        end

        return date
    end


    def title=(new_title)
        @title = new_title
    end

    def deadline=(new_deadline)
        @deadline = valid_date?(new_deadline)
    end

    def description=(new_descrip)
        @description = new_descrip
    end


  

end

