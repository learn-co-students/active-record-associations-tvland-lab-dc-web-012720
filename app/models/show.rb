class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        arr = []
        characters.each{ |character|
            if character.show == self
                arr << character.actor.full_name
            end
        }
        arr
    end
  
end