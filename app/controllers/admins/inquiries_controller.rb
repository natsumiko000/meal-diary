class Admins::InquiriesController < Admins::BaseController
	before_action :set_inquiry, only: [:show, :edit, :update, :destroy]

	# GET /inquiries
	# GET /inquiries.json
	def index
		@inquiries = Inquiry.all
	end

	# GET /inquiries/1
	# GET /inquiries/1.json
	def show
	end

	# DELETE /inquiries/1
	# DELETE /inquiries/1.json
	def destroy
		if @inquiry.destroy
			redirect_to inquiries_url, notice: 'お問い合わせを削除しました。' 
		else
			redirect_back(fallback_location: root_path, alert: @inquiry.errors.full_messages.join(", "))
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_inquiry
			@inquiry = Inquiry.find(params[:id])
		end
end
