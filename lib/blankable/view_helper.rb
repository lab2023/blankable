module Blankable
  module ViewHelper
    def blankable(contents)
      if contents.is_a?(Integer)
        size = contents
      else
        size = contents.size
      end
      render partial: size == 0 ? 'blank' : 'list'
    end
  end
end