module UsersHelper
  def admin?
    if user_signed_in?
      current_user.admin?
    end
  end
end
