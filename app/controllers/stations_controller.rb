class StationsController < ApplicationController
    helper StationsHelper

    def index
        @stations = helpers.get_all_stations
        #render plain: helpers.station_to_html_small(@stations['records'][0])
    end
end
