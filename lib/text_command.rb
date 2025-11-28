require_relative 'command'

class TextCommand < Command
  attr_reader :name, :description, :text


  def initialize
    super(name: "", description: "", text:)
  end

  def execute(event)
    event.respond(@text)    
  end

end