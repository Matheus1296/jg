# Frontend

## 📱 Sobre o Projeto

Este é o frontend da aplicação [Api Graphql], desenvolvido com Flutter e GetX. O projeto oferece uma interface moderna e responsiva, funcionando em múltiplas plataformas (iOS, Android e Web).

## 🚀 Tecnologias Utilizadas

- **Flutter**: Framework UI multiplataforma da Google
- **GetX**: Gerenciamento de estado, navegação e injeção de dependências
- **GraphQL**: Comunicação com o backend
- [Outras bibliotecas relevantes]

## 🔧 Pré-requisitos

Antes de começar, você precisa ter instalado em sua máquina:

- [Flutter](https://flutter.dev/docs/get-started/install) (versão 3.x ou superior)
- [Git](https://git-scm.com)
- [Android Studio](https://developer.android.com/studio) e/ou [Xcode](https://developer.apple.com/xcode/)

## 💻 Instalação e Configuração

1. Faça o clone deste repositório.
2. Instale as dependências

```bash
flutter pub get
```

## ▶️ Executando o Projeto

### Android

```bash
# Certifique-se de ter um emulador Android rodando ou um dispositivo conectado
flutter run
```

### iOS

```bash
# Certifique-se de ter o Xcode instalado e um simulador iOS disponível
cd ios
pod install
cd ..
flutter run -d ios
```

### Web

```bash
flutter run -d chrome
```
