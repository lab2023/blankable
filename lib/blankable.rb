require "blankable/version"
require "blankable/view_helper"

module Blankable
  ActionView::Base.send :include, Blankable::ViewHelper
end
