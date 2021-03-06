module ApplicationHelper
  #include Devise::Controllers::Helpers

  #helper_method :current_user

  def user_me
    @current_user ||= @User
  end




  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def asset_url asset
    "#{request.protocol}#{request.host_with_port}#{asset_path(asset)}"
  end
end
