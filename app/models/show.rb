class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.all.map{|actor| actor.full_name}
  end

  def build_network(call_letters:)
      network = Network.new(call_letters: call_letters)
      network.shows << self
  end
end