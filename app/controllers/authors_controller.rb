class AuthorsController < ApplicationController
  before_action :get_author, only: [:show, :edit, :update, :destroy]

  def index # showing ALL authors (plural)
    @authors = Author.all
  end

  def new # making a new author (singular)
    @author = Author.new
  end

  def show
  end

  def edit
  end

  def create# ***********************
    @author = Author.create(author_params)
    redirect_to author_path(@author)
  end

  def update
    @author.update(author_params)
    redirect_to author_path(@author)
  end

  def destroy
    @author.destroy
    redirect_to authors_path
  end

  private

  def get_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :birth_year)
  end

end
