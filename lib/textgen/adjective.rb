module TextGen
  class Adjective
    @@file = 'adjective_list.txt'
    include TextGen::RandomFileLine

    def self.pick
      line_from(@@file)
    end
  end
end
