require_relative 'command'

class PingCommand < Command
  attr_reader :name, :description

  # def initialize(name: "ping", description:"Svarar med Pong!")
  #   @name = name
  #   @description = description
  # end

  def initialize
    super(name: "ping", description: "Svarar med Pong!")
  end

  def execute(event)
    event.respond("Pong!")    
  end

end