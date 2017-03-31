module Api
  module V1
    # Ratings Controller to rate a film
    class RatingsController < APIController
      def create
        @rating = Rating.new(rating_params)

        if @rating.save
          render json: @rating
        else
          render json: { error: 'Rating was not created' }.to_json, status: 404
        end
      end

      private

      def rating_params
        params.require(:rating).permit(:rating, :film_id, :user_id)
      end
    end
  end
end
