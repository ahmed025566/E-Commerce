# frozen_string_literal: true

if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_E_Commerce_app',
                                                        domain: 'authentication-app-api.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, key: '_E_Commerce_app'
end
