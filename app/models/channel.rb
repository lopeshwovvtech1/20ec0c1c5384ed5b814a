class Channel < ApplicationRecord
  has_many :shows, class_name: "Show"
end
