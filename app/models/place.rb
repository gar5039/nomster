class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, length: { minimum: 4, too_short: "Minimum is %{count} characters" }, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
