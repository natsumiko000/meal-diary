class InquiryMailer < ApplicationMailer
	def send_mail(inquiry)
		@inquiry = inquiry
		mail(
			from: 'info@meal-diary.com',
			to: inquiry.email,
			bcc: ENV['EMAIL'],
			subject: 'お問い合わせ通知'
		)
  	end
end
