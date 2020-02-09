class Show < ActiveRecord::Base
  belongs_to :network
  belongs_to :genre
  has_many :characters
  has_many :actors, through: :characters
  attr_accessor :genre
  def actors_list
    self.actors.map {|t| t.full_name}
  end
end