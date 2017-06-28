class UserDecorator < Draper::Decorator
  delegate_all

  # def link_to_profile(size)
  #   h.link_to profile_photo(size).html_safe, h.user_path(self.object)
  # end

  def title(title_name)
    h.content_tag :h2 do
      title_name.present? ? title_name : "Perfis"
    end
  end

  def my_profile?(current_user)
    self.object == current_user
  end
end
