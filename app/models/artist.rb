class Artist < ApplicationRecord
  has_many :arts

  def full_name
    "#{first_name} #{last_name}"
  end
end
