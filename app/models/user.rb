class User < ApplicationRecord
  has_many :posts, primary_key: :uuid

  ## Patch sqlite uuid missing
  before_create :maybe_assign_uuid
  def maybe_assign_uuid
    self.uuid = SecureRandom.uuid if self.uuid.blank?
  end
end
