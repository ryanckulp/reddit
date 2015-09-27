class Prediction < ActiveRecord::Base
  validates :title, :url, presence: true

end
