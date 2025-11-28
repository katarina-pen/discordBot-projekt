class InfoCommand
  attr_reader :name, :description

  def initialize(name: "info", description:"Svarar med info om boten")
    @name = name
    @description = description
  end

  def execute(event)
    event.respond("Jag är en bot :)")    
  end

end