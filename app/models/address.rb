class Address < ActiveRecord::Base
  belongs_to :user

  validates :encrypted_private_key, presence: true, uniqueness: true
  validates :public_key, presence: true, uniqueness: true
  validates :user_id, presence: true # TODO: validate relationship

end
