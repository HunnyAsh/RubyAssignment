class ResistorColorDuo
  LIST_OF_RESISTORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'].freeze

  def self.value(resistors)
    "#{LIST_OF_RESISTORS.index(resistors[0])}#{LIST_OF_RESISTORS.index(resistors[1])}".to_i
  end
end
