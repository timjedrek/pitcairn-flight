class BookDownloadsMailer < ApplicationMailer

  default from: 'no-reply@pitcairnmailer.com'

  def book_downloads(book_download)
    @book_download = book_download

    if Rails.env.production?
      mail(to: @book_downloadt.email, bcc: ["no-reply@pitcairnmailer.com", "flynow@pitcairnflight.com"], subject: "✈️ Pitcairn Flight Academy FREE Pilot Training Booklet")
    else
      mail(to: @book_downloadt.email, bcc: ["no-reply@pitcairnmailer.com"], subject: "✈️ Pitcairn Flight Academy FREE Pilot Training Booklet")
    end
  end


end
