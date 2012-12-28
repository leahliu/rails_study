class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(params[:book])
      redirect_to(@book)
    else
      render "edit"
    end
  end
end
