class CommentsController < ApplicationController
  def new
  end

  def create
    comment = Comment.new
    @comment.product = @product
    comment.body = params[:comment][:body]
    comment.user_id = current_user.id
    comment.product_id = params[:id]

    respond_to do |format|
      if comment.save
        format.html { redirect_to products_index_path , notice: 'Comentario realizado!' }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
