// ProfileModel.swift

// ProfileViewModel.swift

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var isFollowing = false
    @Published var userFollowers = ""
    @Published var user = User(
        picture: "perfil", // imagem no Assets.xcassets
        name: "Adevanes Thiago",
        nick: "@thiagosilvaad",
        followers: 22645
    )
    
    init() {
        loadFollowers()
    }

    func loadFollowers() {
        self.userFollowers = customizeNumber(value: user.followers)
    }

    private func customizeNumber(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "pt_BR")
        
        // Exibe "22,6 mil" se for maior que 10.000
        if value >= 10_000 {
            let mil = value / 1000
            return String(format: "%.1f mil", mil).replacingOccurrences(of: ".", with: ",")
        }
        
        // Caso contrário, mostra número com separador
        return formatter.string(from: NSNumber(value: value)) ?? "0"
    }

    func followToggle() {
        isFollowing.toggle()
        user.followers += isFollowing ? 1 : -1
        loadFollowers()
    }
}


