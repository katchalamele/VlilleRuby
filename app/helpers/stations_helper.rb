require 'net/http'
require 'json'

module StationsHelper
    
    def get_all_stations
        url = 'https://opendata.lillemetropole.fr/api/records/1.0/search/?dataset=vlille-realtime&timezone=Europe/Paris&rows=30'
        uri = URI(url)
        response = Net::HTTP.get(uri)
        JSON.parse(response)
    end

    def get_station_item_attr station
=begin
        result = ''
        station['fields'].each do |field, value|
            result += "data-#{field}=\"#{value}\" "
        end
        result
=end
        "id=\"#{station['recordid']}\"" + station['fields'].map { |k, v| "data-#{k}=\"#{v}\"" }.join(' ')
    end
end
