class Tool < ApplicationRecord
  CATEGORY = ["storage/presentation", "books", "mold", "accessory", "robot"]
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates_format_of :picture, with: /\.(png|jpg|jpeg)\z/i, message: "Bad format. Should be an image url!"
  validates :details, presence: true
  validates :categories, inclusion: {in: CATEGORY}
end
