# 📱 Follow – Projeto SwiftUI

Aplicativo demonstrativo feito com SwiftUI que simula uma interface de perfil de usuário com funcionalidade de seguir e mostrar número de seguidores com formatação.

---

## 🖼️ Screenshots

<img width="341" height="701" alt="Captura de Tela 2025-07-11 às 18 06 42" src="https://github.com/user-attachments/assets/63d6e9f2-5bde-40e8-91b5-c8e6a0daef49" />
<img width="341" height="701" alt="Captura de Tela 2025-07-11 às 18 06 34" src="https://github.com/user-attachments/assets/8e45685d-acc4-4b7b-bcb1-0a6db3ebd495" />


---

## 🧩 Funcionalidades

- Visualização de perfil (foto, nome e nickname)
- Botão **Seguir / Deixar de seguir**
- Atualização automática da contagem de seguidores
- Exibição de seguidores formatados como `22,6 mil`
- Botão "Enviar mensagem" habilitado apenas após seguir

---

## 🛠️ Tecnologias

- Swift 5.9
- SwiftUI
- MVVM (Model-View-ViewModel)
- `@StateObject` / `@Published` para reatividade
- Xcode 15+

---

## 🚀 Como rodar

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/follow.git


cd follow
open Follow.xcodeproj

Follow/
│
├── Model/
│   └── ProfileModel.swift
│
├── ViewModel/
│   └── ProfileViewModel.swift
│
├── View/
│   └── ProfileView.swift
│
├── Assets.xcassets/
│   └── perfil.png
│
├── Images/
│   └── screen1.png
│   └── screen2.png
│
└── README.md
