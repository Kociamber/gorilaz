class Member < ActiveRecord::Base

  validates :first_name, presence: true, length: 2..30
  validates :nickname, presence: true, length: 1..50
  validates :last_name, presence: true, length: 2..30
  validates :belt, numericality: { only_integer: true }, presence: true, inclusion: { in: 1..5 }
  validates :stripes, numericality: { only_integer: true }, presence: true, inclusion: { in: 1..4 }

  def fullname
    self.first_name.to_s + " " + self.nickname.to_s + " " + self.last_name.to_s
  end

end
