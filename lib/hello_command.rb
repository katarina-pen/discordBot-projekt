require_relative 'command'

class HelloCommand < Command
  attr_reader :name, :description

  # def initialize(name: "hello", description:"Säger hej!")
  #   @name = name
  #   @description = description
  # end
  def initialize
    super(name: "hello", description: "Säger hej!")
  end

  def execute(event)
    event.respond("Hello!")    
  end

end