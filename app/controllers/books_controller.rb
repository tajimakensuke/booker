class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    @book = Book.find(params[:id])
    
  end

  def show
    @book = Book.find(params[:id])
  end

  def edite
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
