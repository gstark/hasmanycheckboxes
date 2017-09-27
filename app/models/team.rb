class Team < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :players, through: :memberships
end
