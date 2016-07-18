class Complement
  def self.of_dna(strand)
    /[^CGTA]/ =~ strand ? '' : strand.tr('CGTA', 'GCAU')
  end
end

module BookKeeping
  VERSION = 4
end