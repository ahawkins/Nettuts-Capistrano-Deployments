class CommentsController < ApplicationController
  def create
    book = Book.find params[:book_id]
    comment = book.comments.new params[:comment]
    comment.save
    flash[:notice] = 'Comment saved'
    redirect_to book_path(book)     
  end
end
