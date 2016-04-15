class Member < ActiveRecord::Base
  def fullname
    self.first_name.to_s + " " + self.nickname.to_s + " " + self.last_name.to_s
  end
end
