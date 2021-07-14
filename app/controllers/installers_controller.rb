# frozen_string_literal: true

# Controller for /installer and /installer/:path
# returns a lua installer for a turtle (etc.) or a xml-schema
class InstallersController < ApplicationController
  # returns a lua file containing the installer
  def download
    @installer = Installer.find(params[:path])
  end

  # returns a xml file representing the data from the installer model
  def show

  end
end
