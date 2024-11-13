class ThemesController < ApplicationController
  def update
    session[:theme] = params[:theme]
    render turbo_stream: turbo_stream.replace(
      'theme-toggle',
      partial: 'themes/theme_toggle',
      locals: { theme: session[:theme] }
    )
  end
end
