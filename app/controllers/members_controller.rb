class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  def index
    if params[:search]
      @members = Member.search(params[:search]).order("#{sort_column} #{sort_direction}")
    else
      @members = Member.order("#{sort_column} #{sort_direction}").order("stripes #{sort_direction}")
    end
  end

  def show
  end

  def new
    @member = Member.new
  end

  def edit
  end

  def create
    @member = Member.new(member_params)

    return render :new unless @member.save
    redirect_to @member, notice: 'Member was successfully created.'
  end

  def update
    return render :edit unless @member.update(member_params)
    redirect_to @member, notice: 'Member was successfully updated.'
  end

  def destroy
    @member.destroy
    redirect_to members_url, notice: 'Member was successfully destroyed.'
  end

  private
    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:first_name, :nickname, :last_name, :date_birth, :date_joined, :belt, :stripes, :avatar, :description)
    end

    def sortable_columns
      ["first_name", "nickname", "last_name", "date_birth", "date_joined", "belt"]
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "first_name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
