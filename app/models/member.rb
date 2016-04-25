class Member < ActiveRecord::Base

  validates :first_name, presence: true, length: 0..30
  validates :nickname, length: 0..50
  validates :last_name, presence: true, length: 0..35
  validates :belt, inclusion: { in: 1..5, message: "must be selected" }
  validates :stripes, inclusion: { in: 0..4, message: "number must be selected" }

  mount_uploader :avatar, AvatarUploader

  def fullname
    self.first_name.to_s + " " + self.nickname.to_s + " " + self.last_name.to_s
  end

  def self.search(search)
    #where("first_name LIKE ?", "%#{search}%")
    #where("lower(last_name) LIKE ?", "%#{search}%")
    #where("lower(first_name || ' ' || last_name) like ?", "%#{search}%")
    where("lower(first_name || ' ' || nickname || ' ' || last_name) like ?", "%#{search}%")
  end

end
