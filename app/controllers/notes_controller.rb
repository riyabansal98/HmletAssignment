class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /notes
  # GET /notes.json
  def index
    tags = []
    if params["tags"].present?
      tags = params["tags"].split(",")
      @notes = Note.joins('join notes_tags on notes.id = notes_tags.note_id').where('notes_tags.tag_id in (?)',Tag.all.where('name in (?)', tags).select(:id)).uniq
    else
      @notes = Note.all
    end

    if params["email"].present?
      @notes = @notes.joins('join users on users.id = notes.user_id').where('users.email like ?', "%#{params["email"]}%")
    end
    if params["sort"].present?
      if params["sort"] == "ASC"
        @notes = @notes.order('notes.created_at ASC')
      else
        @notes = @notes.order('notes.created_at DESC')
      end
    end
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)
    if params["tags"].present?
      tags = params["tags"].split(",")
      @note.tags << Tag.all.where('name in (?)', tags)
    end
    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        if params["tags"].present?
          tags = params["tags"].split(",")
          @note.tags << Tag.all.where('name in (?)', tags)
        end
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:title, :content, :image, :email)
    end
end
