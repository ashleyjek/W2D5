class List
    
    attr_reader :label, :items

    def initialize(label)
        @label = label
        @items = [] # <= will contain instances of Item 
    end

    def label=(new_label)
        @label = new_label
    end

    def add_item(title, deadline, description=nil)
        description ||= ""
        if !Item.new(title, deadline, description)
            return false
        else
            @items << Item.new(title, deadline, description)
            return true
        end
    end

    def size 
        return @items.length
    end

    def valid_index?(idx)
        if @items[idx] == nil
            return false
        else
            return true
        end
    end

    def swap(idx1, idx2)
        if !valid_index?(idx1) || !valid_index?(idx2)
            return false
        else @items[idx1], @items[idx2] = @items[idx2], @items[idx1]
            return true
        end
    end

    def [](idx)
        if @items[idx] == nil
            return nil
        else return @items[idx]
        end
    end

    def priority
        return @items[0]
    end


end