class Robot
  @@robot_names = []

  def name
    @name || get_random_name
  end

  def reset
    @name = nil
  end

  private

  def get_random_name
    begin
      @name = (('A'..'Z').to_a.sample(2) + ('1'..'9').to_a.sample(3)).join
    end while @@robot_names.include?(name)
    @@robot_names << name
    name
  end
end

module BookKeeping
  VERSION = 2
end