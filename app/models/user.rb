class User < ActiveRecord::Base
  has_secure_password

  PASSWORD_FORMAT = /\A
    (?=.{8,}) # Must contain 8 or more characters
    (?=.*\d)  # Must contain a number
  /x

  validates :password, format: { with: PASSWORD_FORMAT, message: 'must be at least 8 characters and contain a number' },
                       if: proc { |s| !s.password.nil? }
  validates :password_confirmation, presence: true,
                                    if: proc { |s| !s.password.nil? }

  %w( first_name last_name ).each do |attr|
    validates attr, presence: true
  end

  def self.user_by_email(email)
    find_by(email: email)
  end

  def self.user_by_id(id)
    find_by(id: id)
  end
end
