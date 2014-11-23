class Admin::MembersController < Admin::ApplicationController
  def index
    @members = Member.all
  end

  def new
  	@member = Member.new
  end

  def create
  	@member = Member.new(member_params)

    if @member.save
      redirect_to admin_members_path
    else
      render "new"
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])

    if @member.update(member_params)
      redirect_to admin_members_path
    else
      render 'edit'
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    redirect_to admin_members_path
  end

  private
    def member_params
      params.require(:member).permit(:name, :introduction, :email, :image_url, :profile_img)
    end
end
