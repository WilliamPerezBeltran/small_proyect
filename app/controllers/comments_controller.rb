class CommentsController < ApplicationController
	def create
		product = Product.find(params[:product_id])
		product.comments.create(body: params[:comment][:body], product_id: params[:product_id],user_id: current_user.id)
		# product.comments.create(comments_params)

		redirect_to product
		
	end

	# private	
	# 	def comments_params
	# 		params.require(:comment).permit(:body).merge(user: current_user)
			
	# 	end
end
