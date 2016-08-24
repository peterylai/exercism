class Allergies
  attr_reader :list
  ALLERGENS = {
    'eggs' => 1,
    'peanuts' => 2,
    'shellfish' => 4,
    'strawberries' => 8,
    'tomatoes' => 16,
    'chocolate' => 32,
    'pollen' => 64,
    'cats' => 128
  }.freeze

  def initialize(allergy_score)
    @list = list_from_score(allergy_score)
  end

  def allergic_to?(thing)
    list.include?(thing)
  end

  private

  def list_from_score(allergy_score)
    ALLERGENS.select do |_, allergen_score|
      (allergy_score & allergen_score).nonzero?
    end.keys
  end
end
