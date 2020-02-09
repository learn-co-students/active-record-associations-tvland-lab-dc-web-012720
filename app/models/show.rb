class Show < ActiveRecord::Base
  belongs_to :genre
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  attr_accessor :genre
  def actors_list
    self.actors.map {|t| t.full_name}
  end
end