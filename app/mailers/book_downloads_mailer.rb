class BookDownloadsMailer < ApplicationMailer

  default from: 'flynow@pitcairnflight.com'

  def book_downloads(book_download)
    @book_download = book_download

    mail(to: @book_download.email, bcc: ["info@pitcairnflight.com"], subject: "✈️ Pitcairn Flight FREE Pilot Training Booklet")
  end


end
