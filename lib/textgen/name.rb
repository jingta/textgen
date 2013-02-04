module TextGen

  class Name
    def self.generate
      odds = rand(1..100)
      name = ''
      case odds
      when 0..20
        name = "The #{TextGen::Adjective.pick.capitalize} #{TextGen::Noun.pick.capitalize}"
      when 20..40
        name = "#{TextGen::Adjective.pick.capitalize} #{TextGen::Noun.pick.capitalize}"
      when 40..48
        name = "#{TextGen::Noun.pick.capitalize} and #{TextGen::Noun.pick.capitalize}"
      when 48..55
        name = "The #{TextGen::Noun.pick.capitalize} and #{TextGen::Noun.pick.capitalize}"
      when 55..70
        name = "#{TextGen::Noun.pick.capitalize}'s #{TextGen::Noun.pick.capitalize}"
      when 70..80
        name = "#{TextGen::Adjective.pick.capitalize} #{TextGen::Adjective.pick.capitalize} #{TextGen::Noun.pick.capitalize}"
      when 80..90
        name = "#{TextGen::Adjective.pick.capitalize} #{TextGen::Noun.pick.capitalize}'s #{TextGen::Noun.pick.capitalize}"
      when 90..95
        name = "#{TextGen::Adjective.pick.capitalize} #{TextGen::Noun.pick.capitalize}'s #{TextGen::Adjective.pick.capitalize} #{TextGen::Noun.pick.capitalize}"
      when 95..100
        name = "#{TextGen::Adjective.pick.capitalize} #{TextGen::Noun.pick.capitalize} and #{TextGen::Adjective.pick.capitalize} #{TextGen::Noun.pick.capitalize}"
      end
    end
  end

end
