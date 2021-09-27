# frozen_string_literal: true

require 'csv'

puts 'Seeding database...'
table = CSV.parse(File.read(Rails.root.join('lib', 'assets', 'redfin_2021-09-24-15-12-09.csv')), headers: true)

table.each do |row|
  home = Home.find_or_create_by!(address: row['ADDRESS'])
  home.update!(
    property_type: row['PROPERTY TYPE'],
    city: row['CITY'],
    state: row['STATE OR PROVINCE'],
    zip: row['ZIP OR POSTAL CODE'],
    beds: row['BEDS'],
    baths: row['BATHS'],
    year_built: row['YEAR BUILT'],
    status: row['STATUS'],
    url: row['URL (SEE http://www.redfin.com/buy-a-home/comparative-market-analysis FOR INFO ON PRICING)'],
  )
end