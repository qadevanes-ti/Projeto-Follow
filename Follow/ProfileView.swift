// ProfileView.swift

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {
            // Foto de perfil
            Image(viewModel.user.picture)
                .resizable()
                .frame(width: 180, height: 180)
                .clipShape(Circle())
                .padding(.bottom, 10)

            // Nome
            Text(viewModel.user.name)
                .font(.system(size: 33, weight: .bold))

            // Apelido
            Text(viewModel.user.nick)
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(.blue)

            // Seguidores formatados
            Text(viewModel.userFollowers)
                .font(.system(size: 60, weight: .bold))
                .padding(.bottom, 10)
                .padding(40)

            // Botões
            VStack(spacing: 12) {
                // Seguir / Deixar de seguir
                Button {
                    viewModel.followToggle()
                } label: {
                    Label(viewModel.isFollowing ? "Deixar de seguir" : "Seguir", systemImage: "person.fill.badge.plus")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(viewModel.isFollowing ? .blue : .black)

                // Enviar mensagem
                Button {
                    // Ação futura
                } label: {
                    Label("Enviar mensagem", systemImage: "message")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(!viewModel.isFollowing)
            }
            .padding(20)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}

