class PlayerOneHitPoints
  def initialize
    @playeronehp = 100
  end

  def damage_to_player_one(attack)
    @playeronehp -= attack
  end

  private

  attr_accessor :playeronehp
end