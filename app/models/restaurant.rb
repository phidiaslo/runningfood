class Restaurant < ActiveRecord::Base
  extend FriendlyId
  friendly_id :subdomain, use: :slugged
  
  has_many :items, dependent: :destroy

  before_validation :downcase_subdomain

  validates :subdomain, presence: true,
                       uniqueness: { case_insensitive: false },
                       format: { with: /\A[\w\-]+\Z/i, message: 'contains invalid characters' }

  private
  def downcase_subdomain
	  self.subdomain = subdomain.try(:downcase)
	end
end
