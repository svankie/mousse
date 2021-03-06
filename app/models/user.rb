class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create

  after_destroy :ensure_an_admin_remains

  private

  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user"
    end
  end
end
