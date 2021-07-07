class Show < ActiveRecord::Base
    has_many :characters 
    has_many :actors, through: :characters
    belongs_to :network 

    def actors_list
        self.characters.map do |c|
        "#{c.actor.full_name}"
        end 
    end 

    def build_network(call_letters_input)
        n = Network.create(call_letters_input)
        self.network = n 
    end 

end