require_relative '../../db/config'

class Task < ActiveRecord::Base

after_initialize :defaults, :if => :new_record?

def defaults
  self.completed ||= false
end

  # validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  # validates_uniqueness_of :email
  # validates_inclusion_of :age, in: 5..99
  # validates_format_of :phone, with: /(\d\D*){10}/

  # def name
  #   self.first_name + " " + self.last_name
  # end

  # def age
  #   now = Date.today
  #   age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  # end

end