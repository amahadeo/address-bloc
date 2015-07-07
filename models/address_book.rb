require_relative "entry.rb"

class AddressBook
    attr_accessor :entries
    
    def initialize
        @entries = []
    end
    
    def add_entry(name, phone, email)
        index = 0
        @entries.each do |entry|
            if name < entry.name
                break
            end
            index += 1
        end
        @entries.insert(index, Entry.new(name, phone, email))
    end
    
    def remove_entry(name)
        @entries.each_with_index do |entry, index|
            if entry.name == name
                @entries.delete_at(index)
            end
        end
    end
end