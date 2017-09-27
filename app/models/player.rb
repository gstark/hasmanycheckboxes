class Player < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :teams, through: :memberships
end
