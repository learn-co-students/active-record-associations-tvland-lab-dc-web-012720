class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    char = Character.all.select {|char| self.id == char.actor_id}
    show = char.map {|char| Show.find(char.show_id)}
    
    i=0
    arr = []
    while i < char.length do
        arr << "#{char[0].name} - #{show[0].name}"
        i+=1
    end

    arr.each{|name| name}
  end

end