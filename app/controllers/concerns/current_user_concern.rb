module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(
      name: 'My Guest',
      first_name: 'My Guest',
      last_name: 'User',
      email: 'guest@example.com'
    )
  end
end
