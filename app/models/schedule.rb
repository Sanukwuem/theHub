class Schedule < ActiveRecord::Base
  has_many :events





  #has_many :schedule_path
  #has_many :event_id
  #has_many :new_schedule_path
  #has_many :schedules # through: :parts

=begin
  attr_accessible :title, :content

validates :title, presence: true, uniqueness: true
validates :content, presence: true

# It returns the articles whose titles contain one or more words that form the query
def self.search(query)
  # where(:title, query) -> This would return an exact match of the query
  where("title like ?", "%#{query}%")
end
=end
end
