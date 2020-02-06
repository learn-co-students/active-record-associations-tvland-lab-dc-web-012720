class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network


    def actors_list
        char = Character.where("show_id == ?", self.id)
        actor = char.map{|char| Actor.find(char.actor_id)}
        actor.map{|person| person.full_name}
    end

end