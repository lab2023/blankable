module Blankable
  module ViewHelper
    def Blankable(contents)
      if contents.size == 0
        render partial: 'blank'
      else
        render partial: 'grid'
      end
    end
  end
end