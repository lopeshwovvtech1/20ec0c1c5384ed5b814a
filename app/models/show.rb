class Show < ApplicationRecord
  belongs_to :channel, class_name: "Channel"
end
