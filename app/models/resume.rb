class Resume < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
