require "Blankable/version"
require "Blankable/view_helper"

module Blankable
  ActionView::Base.send :include, Blankable::ViewHelper
end
