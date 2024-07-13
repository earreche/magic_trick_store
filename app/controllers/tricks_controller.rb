# frozen_string_literal: true

class TricksController < ApplicationController
  def index
    @tricks = Trick.all
  end
end
