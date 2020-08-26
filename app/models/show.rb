class Show < ApplicationRecord
  belongs_to :channel, class_name: "Channel"
  has_many :tv_show_timings, class_name: "TvShowTiming"
end
