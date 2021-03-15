class CartelScansController < ApplicationController
  def create
    image       = params[:image]
    client      = Google::Cloud::Vision.image_annotator
    response    = client.text_detection image: image
    annotations = response.responses.first.text_annotations.first.description.split("\n")

    return render json: { html: render_to_string(partial: 'result', locals: { annotations: annotations }) }
  end
end

# <%= form_tag cartel_scans_path, multipart: true, method: :post do %>
#   <label for="image">File to Upload</label> <%= file_field_tag :image %>
#   <%= submit_tag %>
# <% end %>