class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    arr = []
    count = 0
    while count < self.characters.length do
    arr.push(self.characters[count].name + " - " + self.shows[count].name)
    count += 1
    end
    arr
  end
  
end