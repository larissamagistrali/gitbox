# 🎮 Gitbox Game

Um jogo de plataforma e puzzle desenvolvido em Godot Engine como projeto da disciplina de Desenvolvimento de Jogos (2022/2).

## 📖 Sobre o Projeto

Gitbox é um jogo de plataforma 2D que combina elementos de puzzle e aventura. O jogador deve navegar por diferentes níveis, resolver quebra-cabeças utilizando caixas empurráveis, botões e portas, enquanto coleta estrelas e evita armadilhas.

## 🎯 Características

- **3 Níveis desafiadores** com dificuldade progressiva
- **Sistema de puzzle** com caixas empurráveis e botões de ativação
- **Mecânicas de plataforma** clássicas: pulo, corrida e movimento
- **Coleta de itens** (estrelas e frutas)
- **Sistema de tutorial** integrado para novos jogadores
- **Diferentes armadilhas e obstáculos**: espinhos, serras, fogo, plataformas móveis
- **Checkpoints** para salvar progresso
- **Interface intuitiva** com menu, comandos e informações sobre o jogo

## 🖼️ Capturas de Tela

<p align="center">
  <img src="https://github.com/larissamagistrali/gitbox/blob/main/1.png" alt="Gameplay 1" height="300">
  <img src="https://github.com/larissamagistrali/gitbox/blob/main/2.png" alt="Gameplay 2" height="300">
</p>

<p align="center">
  <img src="https://github.com/larissamagistrali/gitbox/blob/main/3.png" alt="Gameplay 3" height="300">
  <img src="https://github.com/larissamagistrali/gitbox/blob/main/4.png" alt="Gameplay 4" height="300">
</p>

## 🎮 Como Jogar

### Requisitos

- [Godot Engine 3.x](https://godotengine.org/download) instalado em seu computador

### Executando o Jogo

1. Clone este repositório:

```bash
git clone https://github.com/larissamagistrali/gitbox.git
```

2. Abra o Godot Engine
3. Clique em "Importar" e navegue até a pasta `gitbox-game`
4. Selecione o arquivo `project.godot`
5. Clique em "Importar e Editar"
6. Pressione F5 ou clique no botão "Executar Projeto" para jogar

## 🕹️ Controles

Os controles do jogo podem ser visualizados no menu "Comandos" dentro do jogo.

## 🛠️ Tecnologias Utilizadas

- **Engine**: Godot Engine 3.x
- **Linguagem**: GDScript
- **Assets**: Pixel Art (Pixel Adventure por Pixel Frog)

## 📁 Estrutura do Projeto

```
gitbox-game/
├── assets/          # Sprites, texturas e recursos visuais
├── scenes/          # Cenas do jogo
│   ├── levels/      # Níveis do jogo
│   ├── player/      # Scripts e cenas do jogador
│   ├── itens/       # Objetos interativos
│   ├── UI/          # Interface do usuário
│   └── animations/  # Animações e transições
└── project.godot    # Arquivo de configuração do projeto
```
