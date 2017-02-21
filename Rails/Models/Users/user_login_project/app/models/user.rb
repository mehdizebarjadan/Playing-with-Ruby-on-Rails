class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20, :message => "shold be between 2 to 20"}
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :age, inclusion: { in: 10..150, :message => "shold be between 10 and 150"  }, presence: true, numericality: true
  # numericality: { only_integer: true } #  numericality: { greater_than_or_equal_to: 10, less_than: 150, :message => "The age shold be between 10 and 150"}
  # m[:age] = 350 and m.save this way the validation does not invoke, only on create and update the validation would be invoke
  # m.errors.full_messages

  before_save do
    self.email_address.downcase!
  end
  # The difference between before_save and before_create is that before_create will only happen
  # the first time and object is created, but before_save will happen both on the creation of an
  # object and when we update the object.
end
