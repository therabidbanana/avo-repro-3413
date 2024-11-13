class Post < ApplicationRecord
  belongs_to :user, primary_key: :uuid, inverse_of: :posts


  ## Patch sqlite uuid missing
  before_create :maybe_assign_id
  def maybe_assign_id
    self.id = SecureRandom.uuid if self.id.blank?
  end
end
