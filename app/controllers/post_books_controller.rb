class PostBooksController < ApplicationController
  
  def new
  end

  def create
    @post_image = PostBook.new(post_book_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_books_path
  end

  def index
    @post_books = PostBook.all
  end

  def show
  end

  def destroy
  end
  
  private

  def post_book_params
    params.require(:post_book).permit(:book_name, :book, :opinion)
  end
  
end
