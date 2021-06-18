require 'json'
require 'open-uri'
require 'byebug'

class PlantService
  def self.call


url = 'https://raw.githubusercontent.com/dariusk/corpora/master/data/plants/plants.json'
json_serialized = URI.open(url).read
result = JSON.parse(json_serialized)

result["plants"].each do |plant|
  p plant["name"]
end

  end
end


PlantService.call



