class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def show
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
