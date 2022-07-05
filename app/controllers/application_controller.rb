class ApplicationController < ActionController::Base
  before_action :set_translation

  private
  def set_translation
    gon.id_i18n = YAML.load_file(File.open('config/locales/en.yml')).to_json
  end
end
