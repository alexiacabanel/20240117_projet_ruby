def sign_up
    puts "Définissez un mot de passe :"
    mdp = gets.chomp
    return mdp
end

def login(mdp)
    puts "Veuillez rentrer votre mot de passe :"
    motdp = gets.chomp
    while motdp != mdp
        puts "Mot de passe erroné"
        puts "Veuillez rentrer votre mot de passe :"
        motdp = gets.chomp
    end
end

def welcome_screen
    puts "Bienvenue dans le dashboard de la NASA :)"
end

def perform
    mdp = sign_up
    login(mdp)
    welcome_screen
end

perform