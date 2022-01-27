class Log < ApplicationRecord
  belongs_to :participant
  belongs_to :rule
end
