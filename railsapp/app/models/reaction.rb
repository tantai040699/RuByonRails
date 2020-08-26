class Reaction < ApplicationRecord
  belongs_to :react, polymorphic: true
  belongs_to :user
end
