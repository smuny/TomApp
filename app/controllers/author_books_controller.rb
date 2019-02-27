class AuthorBooksController < ApplicationController

  def new

  end

  def create
    author_book = AuthorBook.create(author_book_params)
    redirect_to book_path(author_book.book)
  end

  private

  def author_book_params
    params.require(:author_book).permit(:author_id, :book_id)
  end

end
