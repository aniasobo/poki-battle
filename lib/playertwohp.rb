class PlayerTwoHitPoints
  def initialize
    @playertwohp = 100
  end

  def damage_to_player_two(attack)
    @playertwohp -= attack
  end

  def pretty_player_two
    "HIT POINTS: #{@playertwohp}"
  end


  private

  attr_accessor :playertwohp
end