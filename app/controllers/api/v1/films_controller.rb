require 'json'
module Api
  module V1
    # Films controller to show all films and specific film
    class FilmsController < APIController

      def index
        @films = Film.all
        render json: { films: @films}
      end

      def show
        @film = Film.find(params[:id])
        render json: @film
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Film was not found' }.to_json, status: 404
      end
    end
  end
end



#my_json = { :array => [1, 2, 3, { :sample => "hash"} ], :foo => "bar" }
#puts JSON.pretty_generate(my_json)