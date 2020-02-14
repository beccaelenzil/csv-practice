require 'awesome_print'
require_relative 'csv_practice'


# to run irb: "irb -r ./csv_practice.rb"
# path to data: "../data/filename.csv"

olympic_data = get_all_olympic_athletes('../data/athlete_events.csv')

ap total_medals_per_team(olympic_data)