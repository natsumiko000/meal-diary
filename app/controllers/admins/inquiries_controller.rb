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
		@inquiry.destroy
		respond_to do |format|
			format.html { redirect_to inquiries_url, notice: 'Inquiry was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_inquiry
			@inquiry = Inquiry.find(params[:id])
		end
end
