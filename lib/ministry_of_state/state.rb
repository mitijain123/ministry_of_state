class MinistryOfState::State

  def self.[](*args)
    (@machines ||= {})[args]
  end

  def self.[]=(*args)
    val = args.pop
    (@machines ||= {})[args] = val
  end  

  attr_accessor :states, :events, :initial_state
  attr_reader :name

  def initialize(name)
    @name = name
    @initial_state = nil
    @states = []
    @events = {}
  end
end