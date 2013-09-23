module Blankable
  module ViewHelper
    def blankable(contents)
      render partial: contents.size == 0 ? 'blank' : 'list'
    end
  end
end