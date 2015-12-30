module ApplicationHelper

  def alert_for(flash_type)  
  { success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-info'
  }[flash_type.to_sym] || flash_type.to_s
  end  

  def profile_avatar_select(user)
    return image_tag user.avatar.url(:medium),
                      id: 'image-preview',
                      class: 'img-responsive img-circle profile image'

    if user.avatar.exists?
      image_tag 'default-avatar.jpg', 
                  id: 'image-preview',
                  class: 'img-responsive img-circle profile image'

  end

  def form_image_select(post)
    return image_tag post.avatar.url(:medium),
      id: 'image-preview',
      class: 'img-responsive' if post.avatar.exists?
    image_tag 'bgposta.jpg', id: 'image-preview', class: 'img-responsive'
  end
end
end
