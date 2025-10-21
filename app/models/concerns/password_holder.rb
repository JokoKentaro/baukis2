module PasswordHolder
  extend ActiveSupport::Concern

  def password=(raw_password)
    if raw_password.kind_of?(String)
      self.hashed_password = BCrypt::Password.create(raw_password)
    elsif raw_password.nil?
      self.hashed_password = nil
    end
  end

  included do
    before_validation do
      self.email = normalize_as_email(email)
    end

    validates :email, presence: true, "valid_email_2/email": true, uniqueness: { case_sensitive: false }
  end
end