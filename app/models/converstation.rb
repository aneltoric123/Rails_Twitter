class Converstation < ApplicationRecord
  belongs_to :sender
  belongs_to :receiver
end
