class Website < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :data_scrapper_id
belongs_to :data_scrapper
end
