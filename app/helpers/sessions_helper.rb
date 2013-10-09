module SessionsHelper
  def sign_in(user)
    remeber_token = User.new_remeber_token
    cookies.permanent[:remeber_token] = remeber_token
    user.update_attribute(:remeber_token,Digest::SHA1.hexdigest(remeber_token))
    self.current_user= user
  end
  def current_user=(user)
    @current_user = user
  end
  def current_user
    remeber_token = Digest::SHA1.hexdigest(cookies[:remeber_token])
    @current_user ||= User.find_by_remeber_token(:remeber_token)
  end
  def signed_in?
    cookies[:remeber_token]
  end
  def sign_out
    self.current_user=nil
    cookies.delete(:remeber_token)
  end
end
