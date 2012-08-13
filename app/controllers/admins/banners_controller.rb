class Admins::BannersController < AdminController
  expose(:banner)
  expose(:banners) { Banner.all }

  def create
    if banner.save
      redirect_to admins_banner_path(banner), notice: 'Banner was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    if banner.update_attributes(params[:banner])
      redirect_to admins_banner_path(banner), notice: 'Banner was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    banner.destroy
    redirect_to admins_banners_url
  end
end
