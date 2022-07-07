class BooksController < ApplicationController
  
  def new
    @book = Book.new 
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    list = Book.find(params[:id])
    list.update(book_params)
    redirect_to book_path(book.id)  
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)  
  end
  
  def book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
