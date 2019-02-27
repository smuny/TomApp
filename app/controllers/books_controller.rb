class BooksController < ApplicationController

  before_action :get_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @authors = Author.all
    
    @author_book = AuthorBook.new
  end

  def edit
  end

  def create
    @book = Book.create(book_params)
    redirect_to book_path(@book)
  end

  def update
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private
  def get_book
    @book = Book.find(params[:id])
  end
  def book_params
    params.require(:book).permit(:title, :pages)
  end

end
