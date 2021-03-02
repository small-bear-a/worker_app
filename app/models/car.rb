class Car < ApplicationRecord
  belongs_to :front, class_name: 'User', optional: true
  belongs_to :body,  class_name: 'User', optional: true
  belongs_to :paint, class_name: 'User', optional: true

  validates :car, :name, :number, presence: true
end
