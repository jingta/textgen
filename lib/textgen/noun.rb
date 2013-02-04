module TextGen
  class Noun
    @@file = 'noun_list.txt'
    include TextGen::RandomFileLine

    def self.pick
      line_from(@@file)
    end

  end
end
