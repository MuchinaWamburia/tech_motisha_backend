class AudioComment < ApplicationRecord
  belongs_to :user
  belongs_to :audio
end
