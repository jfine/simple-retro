class User < ApplicationRecord
  broadcasts_refreshes

  validates :username, presence: true, uniqueness: { case_sensitive: false }
end
