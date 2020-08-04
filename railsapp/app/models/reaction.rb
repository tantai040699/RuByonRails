class Reaction < ApplicationRecord
  belongs_to :react, polymorphic: true
end
