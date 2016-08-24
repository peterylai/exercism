class InvalidCodonError < StandardError; end

module Translation
  CODON_MAP = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG' => 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG' => 'Serine',
    'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan',
    'UAA' => 'STOP',
    'UAG' => 'STOP',
    'UGA' => 'STOP'
  }.freeze

  def self.of_codon(codon)
    raise InvalidCodonError unless CODON_MAP[codon]
    CODON_MAP[codon]
  end

  def self.of_rna(sequence)
    protein = []
    i = 0
    until i + 3 > sequence.length || of_codon(sequence[i, 3]) == 'STOP'
      protein << of_codon(sequence[i, 3])
      i += 3
    end
    protein
  end
end