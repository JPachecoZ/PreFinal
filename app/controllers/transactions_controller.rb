class TransactionsController < ApplicationController
  before_action :require_login!
  before_action :set_category
  before_action :set_transaction, only: %i[show update destroy]

  # GET /category/:category_id/transactions
  def index
    @transactions = params[:category_id] ? @category.transactions.all : current_user.transactions.all

    render json: @transactions
  end

  # GET /category/:category_id/transactions/:id
  def show
    render json: @transaction
  end

  # POST /category/:category_id/transactions
  def create
    @transaction = @category.transactions.new(transaction_params)

    if @transaction.save
      render json: @transaction, status: :created
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category/:category_id/transactions/:id
  def update
    if @transaction.update(transaction_params)
      render json: @transaction
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category/:category_id/transactions/:id
  def destroy
    @transaction.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = current_user.categories.find(params[:category_id]) if params[:category_id]
  end

  def set_transaction
    @transaction = @category.transactions.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def transaction_params
    params.require(:transaction).permit(:amount, :notes, :date)
  end
end
