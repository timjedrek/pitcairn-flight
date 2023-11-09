class ApplicationController < ActionController::Base
  before_action :initialize_contact_form
  invisible_captcha only: [:initialize_contact_form], honeypot: :confirm_email

  private

  def initialize_contact_form
    #@enrollment = Enrollment.new
    #@book_download = BookDownload.new
    @message = Message.new
  end
end
