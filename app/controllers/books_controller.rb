class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end

  def edit
  end

  def update
  end

  def destroy
    book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.permit(:title, :body)
  end

end
