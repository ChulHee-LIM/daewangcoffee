class ShopController < ApplicationController

	def list
		
		@shops=Shop.all

	end

	def detail
		
	end

	def add
		
		unless current_user.nil?
			if current_user.admin!=2
				redirect_to :back
			end
		end

	end

	def make
		
		unless current_user.nil?
			if current_user.admin!=2
				redirect_to :back
			else		
				s=Shop.new
				s.category=params[:category]
				s.name=params[:name]
				s.price=params[:price]
				s.thumbnail=params[:thumbnail]
				s.image=params[:image]
				s.detail=params[:detail]
				s.save


		          redirect_to "/shop/detail/#{s.id}"
			end
          end
	end

	def buy_mailing
		if Mailing.buy(current_user, "스트롱홀드 S7", params[:content]).deliver_now
			flash[:success] = "정상적으로 발송되었습니다."
			redirect_to :back
		else
			flash[:danger] = "발송에 실패하였습니다."
			redirect_to :back
		end
	end

end
