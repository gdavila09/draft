class Event < ApplicationRecord
  before_create :generate_slug
  has_many :invitations
  has_many :attendees
  has_many :teams
  # has_many :users, through: :invitations
  attachment :image

  def to_param
    slug
  end

  private

  def generate_slug
    self.slug = name.parameterize
  end
end
