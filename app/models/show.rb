

class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum("rating")
    end

    def self.most_popular_show
        rating = Show.highest_rating
        show = Show.find_by(rating: rating)
        show
    end


end
