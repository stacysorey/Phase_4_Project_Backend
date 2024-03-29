class Api::V1::EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]
  before_action :set_journal, only: [:show, :update, :destroy]

  # GET /entries
  def index
    @entries = Entry.all

    render json: @entries
  end

  # GET /entries/1
  def show
  end

  # POST /entries
  def create
    
    @entry = Entry.new(entry_params)
    
    # @entry.journal_id = params[:entry[:journalID]]
    if @entry.save
      render json: @entry, status: :created
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      render json: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    def set_journal
      @journal = Journal.find(params[:journal_id])
    end
    # Only allow a list of trusted parameters through.
    def entry_params
      params.require(:entry).permit(:title, :description, :date, :journal_id)
    end

end
