module DataAnon
  module Strategy
    module Field


      class RandomSelection

        def initialize values
          @values = values.class == Array ? values : [values]
        end

        def anonymize field
          return @values[0] if @values.length == 1
          @values[Random.new.rand 0...(@values.length - 1)]
        end

      end


    end
  end
end