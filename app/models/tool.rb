class Tool < ApplicationRecord
  CATEGORY = ["storage/presentation", "books", "mold", "accessory", "robot"]
  belongs_to :user
end
