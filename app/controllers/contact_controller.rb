class ContactController < ApplicationController

	def us
		
	end

	def mailing
		if Mailing.contact_us(current_user, params[:title], params[:content]).deliver_now
			flash[:success] = "정상적으로 발송되었습니다."
			redirect_to :back
		else
			flash[:danger] = "발송에 실패하였습니다."
			redirect_to :back
		end
	end

end
