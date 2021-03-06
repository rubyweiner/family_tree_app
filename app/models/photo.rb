class Photo < ApplicationRecord
  belongs_to :family, optional: true
  belongs_to :person, optional: true

  validates :name, presence: true
  validates :img_url, presence: true

end
