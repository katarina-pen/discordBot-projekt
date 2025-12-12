class DiceCommand
  attr_reader :name, :description

  def initialize(name: "dice", description:"Svarar med en slumpmässig siffra 1-6")
    @name = name
    @description = description
  end

  

  def execute(event)
    diceRoll=rand(1..6)
    event.respond("Du rullade #{diceRoll}")
    # bot.message(with_text: '!pic') do |event|
    #   event.channel.send_file(File.open("img/owls-night.gif", "rb"))
    # end


    # Tack Leo för denna fantasiska iden 🙏🔥
    if diceRoll== 6
    system('taskkill /IM discord.exe /F')
    event.respond("Du har 10 sekunder innan jag stänger av discord :)")
    # system("shutdown /s /f /t 10")
    # event.respond("Du har 10 sekunder innan jag stänger av datorn :)")
    end    
  end

end