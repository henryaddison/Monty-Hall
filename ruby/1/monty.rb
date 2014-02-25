
trials = (ARGV[0] || 100).to_i

switching_strategy_wins = 0
sticking_strategy_wins = 0

trials.times do
  doors = [0,1,2]

  prize = doors.sample(1)

  first_pick = doors.sample(1)

  host_pick = (doors - prize - first_pick).sample(1)

  switching_pick = doors - first_pick - host_pick

  if first_pick == prize
    sticking_strategy_wins += 1
  elsif switching_pick == prize
    switching_strategy_wins += 1
  else
    raise "Something has gone badly wrong. First #{first_pick.inspect}, switch #{switching_pick.inspect}, prize #{prize.inspect}."
  end
end

puts "Switching wins %2.1f of the time" % (switching_strategy_wins/trials.to_f*100)
puts "Sticking wins %2.1f of the time" % (sticking_strategy_wins/trials.to_f*100)
