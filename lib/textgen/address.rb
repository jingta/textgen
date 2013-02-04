module TextGen

  class Address
    @@st_parts = ['ave','circle','blvd','rd','st','ln','way','pl','ct','pkwy','alley']
    def self.generate #todo: just enable from geocoding?
      "#{street}, #{city} #{state} #{postal}"
    end

    def self.street ##todo, just use trees/nature and people?
      "#{rand(1..9999)} #{TextGen::Noun.pick.capitalize} #{@@st_parts.sample.capitalize}"
    end
    def self.city
      "Fake City"
    end
    def self.state
      "ST"
    end
    def self.postal
      return 5.times.collect do 
        rand(0..9).to_s
      end.join
    end
  end

end
