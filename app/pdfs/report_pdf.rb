class ReportPdf < Prawn::Document
  def initialize(contributor)
    super()
    @contributor = contributor
    header
    text_content
  end

  def header
    image "#{Rails.root}/app/assets/images/GitHub.jpeg", width: 530, height: 150
  end

  def text_content
    y_position = cursor - 50

    bounding_box([0, y_position], :width => 270, :height => 300) do
      text "Some text", size: 15, style: :bold
      text "Very interesting text"
    end

    bounding_box([300, y_position], :width => 270, :height => 300) do
      text "It's for #{@contributor.name} github user", size: 15, style: :bold
      text "Good by."
    end

  end
end