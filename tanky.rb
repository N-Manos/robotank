require 'rrobots'

class Tanky
  include Robot

  def tick events
    if events['robot_scanned'].empty?
      turn_radar 1 if time == 0
      turn_gun  10
      accelerate 2
      turn 1
    else
      accelerate 2
      fire 1
    end
  end
end
