class Mailing < ApplicationMailer

	def contact_us user, title, content
		@content = content
		mail 	from: user.email,
				to: 'chanha0406@naver.com',
				subject: title
	end

	def buy user, item, content
		@item = item
		@content = content.to_s
		mail 	from: user.email,
				to: 'chanha0406@naver.com',
				subject: item + '구매 문의'
	end
end
