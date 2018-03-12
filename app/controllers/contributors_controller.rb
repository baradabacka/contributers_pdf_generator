class ContributorsController < ApplicationController

  def show
    respond_to do |format|
      format.pdf do
        contributor = Contributor.find(params[:id])
        pdf = ReportPdf.new(contributor)
        send_data pdf.render, filename: "report_for_#{contributor.name}.pdf", type: 'application/pdf'
      end
    end
  rescue
    redirect_to :root_path, alert: 'Вы указали некорректный урл'
  end
end