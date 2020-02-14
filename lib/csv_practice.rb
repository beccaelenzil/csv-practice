require 'csv'
require 'awesome_print'

def get_all_olympic_athletes(filename)
  olympic_data = CSV.read(filename, headers: true).map do |row|   
    #puts row.to_hash.class
    #break
    {
      "ID" => row["ID"], 
      "Name" => row["Name"],
      "Height" => row["Height"],
      "Team" => row["Team"],
      "Year" => row["Year"],
      "City" => row["City"],
      "Sport" => row["Sport"],
      "Event" => row["Event"],
      "Medal" => row["Medal"]
    }
  end
  return olympic_data
end

def total_medals_per_team(olympic_data)
  # initialize an empty hash
  total_medals_count = {}

  # loop through olympic data
  olympic_data.each do |olympic_medalist|
    team = olympic_medalist["Team"]
     # if I encounter a non "NA" medal, record that win in my hash
    if olympic_medalist["Medal"] == "NA"
      if total_medals_count[team] == nil
        total_medals_count[team] = 0
      end
    else
      if total_medals_count[team] == nil
        total_medals_count[team] = 1
      else
        total_medals_count[team] += 1
      end
    end
  end
  return total_medals_count

 
end

def get_all_gold_medalists(olympic_data)
end
