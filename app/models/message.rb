class Message < ApplicationRecord
  before_validation :strip_phone_number
  after_save :to_ghl

  validates :name, presence: true
  validates :body, presence: { message: "Tell us how we can help" }
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "Must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Must be a valid email address" }

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end

  def to_ghl
    ghl_url = ENV['ghl_contact_us']
    ghl_payload = {
      "name" => "#{self.name}",
      "email" => "#{self.email}",
      "phone" => "#{self.phone}",
      "body" => "#{self.body}",
    }
    HTTParty.post(ghl_url, body: ghl_payload.to_json, headers: { "Content-Type" => "application/json" })
  end
end
