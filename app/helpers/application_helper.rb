module ApplicationHelper

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", items_form: builder)
    end
    link_to(name, '#', class: "add_fields btn btn-success add_item", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def data_pre_text(items_form)
    {"id" => items_form.object.try(:id), "name" => items_form.object.try(:description) }.to_json
  end

end
