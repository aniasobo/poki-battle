class Player
  LIFE = 100
  HIT = 10

 # attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = LIFE
  end

  def name
    @name
  end

  def damage_to_player
    @hp -= HIT
  end

  def pretty_player
    "#{@name} HIT POINTS: #{@hp}"
  end

#  private

end