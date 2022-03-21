#!/usr/bin/ruby -w

require 'open-uri'
require 'json'

url = "https://www.hpb.health.gov.lk/api/get-current-statistical"
result = JSON.parse(URI.open(url).read)


puts "\n-------------------------------------------------------------"
puts "Welcome To COVID-19 Situational Analysis Dashboard of Sri Lanka"
puts "---------------------------------------------------------------"
puts "\nUpdate Date: #{result['data']['update_date_time']}"
puts "\nLocal New Cases: #{result['data']['local_new_cases']}"
puts "Local Total Cases: #{result['data']['local_total_cases']}"
puts "\nLocal New Deaths: #{result['data']['local_new_deaths']}"
puts "Local Total Deaths: #{result['data']['local_deaths']}"