require "smalruby"

tunnel1 = Character.new(costume: "costume1:tunnel.png", x: 0, y: 0, angle: 0)
balla1 = Character.new(costume: "costume1:ball-a2.png", x: 296, y: 42, angle: 45)
paddle1 = Character.new(costume: "costume1:paddle.png", x: 282, y: 444, angle: 0)



balla1.on(:start) do
  loop do
    turn_if_reach_wall
    move(15)
  end
end


balla1.on(:start) do
  loop do
    if hit?(paddle1)
      play(name: "piano_do.wav")
      rotate(rand(160..200))
      move(15)
    end
  end
end


paddle1.on(:start) do
  loop do
    self.x = Input.mouse_pos_x
  end
end
