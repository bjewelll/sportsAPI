class Favorite < ApplicationRecord
  belongs_to :user_id
  belongs_to :team_id
end
