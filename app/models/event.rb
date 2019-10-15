class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :invitations
  has_many :guests, through: :invitations, source: :guest
  accepts_nested_attributes_for :invitations
end
