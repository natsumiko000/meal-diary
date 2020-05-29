class InquiriesController < ApplicationController

	# GET /inquiries/new
	def new
		@inquiry = Inquiry.new
	end

	# POST /inquiries
	# POST /inquiries.json
	def create
		@inquiry = Inquiry.new(inquiry_params)
		if @inquiry.save
			InquiryMailer.send_mail(@inquiry).deliver_now
			redirect_to root_path, notice: 'お問い合わせが送信されました。' 
		else
			redirect_back(fallback_location: root_path, error: @inquiry.errors.full_messages.join(", "))
		end
	end


	private
		def inquiry_params
			params.require(:inquiry).permit(:name, :email, :message)
		end 
end
