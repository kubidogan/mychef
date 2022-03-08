class Resume < ApplicationRecord
  belongs_to :user
  STILL_WORKING = ["Present"]
end
