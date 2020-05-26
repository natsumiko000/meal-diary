class InquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show, :edit, :update, :destroy]

  # GET /inquiries/new
  def new
    @inquiry = Inquiry.new
  end

  # POST /inquiries
  # POST /inquiries.json
  def create
    @inquiry = Inquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        InquiryMailer.send_mail(@inquiry).deliver_now

        format.html { redirect_to root_path, notice: 'Inquiry was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :message)
    end 
end
