class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    render :new
  end

  def create
    book = Book.create(book_params)

    redirect_to books_url
  end

  def destroy
    book = Book.find(params[:id]) # find book in question
    book.destroy # delete it
    redirect_to books_url # redirect to index page
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
