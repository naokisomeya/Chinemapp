class Like < ApplicationRecord
  belongs_to :user
  belongs_to :chinema
  validates_uniqueness_of :chinema_id, scope: :user_id

  
end
