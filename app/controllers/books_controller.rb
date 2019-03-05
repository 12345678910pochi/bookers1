class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
end

def index
end

def new
    @book = Book.new
    @books = Book.all
end

def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to new_book_path
end


def edit
  @book = Book.find(params[:id])
end

def update
  book = Book.find(params[:id])
  book.update(book_paramas)
  redirect_to book
end

def create
  book = Book.new(book_paramas)
  book.save
  redirect_to book
end


private

def book_paramas
  params.require(:book).permit(:title, :body)
end

end
