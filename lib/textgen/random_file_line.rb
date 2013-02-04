module TextGen

  module RandomFileLine
    module ClassMethods
      def line_from(file)
        chosen = nil
        File.foreach(path_to_resources + file).each_with_index do |line, i|
          chosen = line.chomp if rand < 1.0/(i+1)
        end
        return chosen
      end
      def path_to_resources
        File.join(File.dirname(File.expand_path(__FILE__)), '../../resx/')
      end
    end
    def self.included(base)
      base.extend ClassMethods
    end
  end

end
