class JournalTypesController < ApplicationController
  before_action :set_journal_type, only: [:show, :edit, :update, :destroy]

  # GET /journal_types
  # GET /journal_types.json
  def index
    @journal_types = JournalType.all
  end

  # GET /journal_types/1
  # GET /journal_types/1.json
  def show
  end

  # GET /journal_types/new
  def new
    @journal_type = JournalType.new
  end

  # GET /journal_types/1/edit
  def edit
  end

  # POST /journal_types
  # POST /journal_types.json
  def create
    @journal_type = JournalType.new(journal_type_params)

    respond_to do |format|
      if @journal_type.save
        format.html { redirect_to @journal_type, notice: 'Journal type was successfully created.' }
        format.json { render :show, status: :created, location: @journal_type }
      else
        format.html { render :new }
        format.json { render json: @journal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journal_types/1
  # PATCH/PUT /journal_types/1.json
  def update
    respond_to do |format|
      if @journal_type.update(journal_type_params)
        format.html { redirect_to @journal_type, notice: 'Journal type was successfully updated.' }
        format.json { render :show, status: :ok, location: @journal_type }
      else
        format.html { render :edit }
        format.json { render json: @journal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journal_types/1
  # DELETE /journal_types/1.json
  def destroy
    @journal_type.destroy
    respond_to do |format|
      format.html { redirect_to journal_types_url, notice: 'Journal type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal_type
      @journal_type = JournalType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journal_type_params
      params.require(:journal_type).permit(:name, :effect)
    end
end
