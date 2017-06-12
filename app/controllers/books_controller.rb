class BooksController < ApplicationController

  def index
    @books = Book.all
    render :index
  end

  def show
    @book = Book.find_by(id: params[:id])
    render :show
  end

  def create
    @book = Book.new(title: params[:title], author: params[:author], publisher: params[:publisher], genre: params[:genre])
    if @book.save
      render :show
    else
      render json: { message: @book.errors.full_messages.join(", ") }
    end
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.update(title: params[:title], author: params[:author], publisher: params[:publisher], genre: params[:genre])
    render :show
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    @books = Book.all
    render :index
  end

end
