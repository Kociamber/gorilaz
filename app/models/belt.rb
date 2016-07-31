class Belt < ActiveRecord::Base

  belongs_to :member

  validates :belt, inclusion: { in: 1..5, message: "must be selected" }
  validates :stripes, inclusion: { in: 0..4, message: "number must be selected" }
  #validates :promotion_date, presence: true

end
