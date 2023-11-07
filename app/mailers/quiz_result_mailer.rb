class QuizResultMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def quiz_result_email(quiz_result)
    @quiz_result = quiz_result
    
    if Rails.env.production?
      mail(to: @quiz_result.email, bcc: ["no-reply@pitcairnmailer.com", "flynow@pitcairnflight.com"], reply_to: "flynow@pitcairnflight.com", subject: "✈️ Thanks for Taking Our Quiz!")
    else
      mail(to: @quiz_result.email, bcc: ["no-reply@pitcairnmailer.com"], reply_to: "flynow@pitcairnflight.com", subject: "✈️ Thanks for Taking Our Quiz!")
    end
  end



end
