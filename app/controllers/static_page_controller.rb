# frozen_string_literal: true

class StaticPageController < ApplicationController
  skip_before_action :set_user_domain, :set_user_settings, :maintenance_mode?, :migration_error?,
  :user_locale, :check_admin_password, :check_user_role

  def guest_wait
    render template: "static/guest_wait", layout: false
  end
end
