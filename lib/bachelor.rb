def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"].downcase == "winner"
    return contestant_hash["name"].split(" ").first
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
  # code here
end
end
end
end

def count_contestants_by_hometown(data, hometown)
count = 0
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
end
end
end
count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
end
end
end
end

def get_average_age_for_season(data, season)
  sum = 0
  contestants_total = 0
  data[season].each do |contestant_hash|
      sum = sum + (contestant_hash["age"]).to_i
      contestants_total += 1
  end
  (sum / contestants_total.to_f).round(0)

end
