class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_paper_trail_whodunnit
  protect_from_forgery with: :exception
  include Dryer

  def user_for_paper_trail
    user_signed_in? ? current_user.email : 'Non Human'
  end
end
