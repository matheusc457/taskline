# 📝 Taskline

[![Taskline Logo](https://img.shields.io/badge/Taskline-To-Do_Manager-blue?style=for-the-badge)](https://github.com/matheusc457/taskline)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)  
[![Language](https://img.shields.io/badge/Language-C-00599C.svg)](https://en.wikipedia.org/wiki/C_(programming_language))  
[![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows-lightgrey)](https://github.com/matheusc457/taskline)

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [JSON Structure](#-json-structure) • [Contributing](#-contributing)

---

## 📋 Overview

**Taskline** is a simple terminal-based CLI task manager written in **C**.  
It allows you to create task lists, add tasks, mark them as done, remove tasks, and view all your tasks in a colorful, organized way.

### Why Taskline?

* ✅ **Lightweight & Fast**: Pure C implementation, runs in any terminal  
* 🎨 **Colorful CLI**: ANSI colors for status messages  
* 💾 **JSON Storage**: Local file-based storage (`tasks.json`)  
* 🔄 **Flexible**: Supports multiple lists and automatic list creation  
* 🛠️ **Open Source**: Easy to read and extend  

---

## ✨ Features

* ✅ Create lists (`new <list>`)  
* ✅ Add tasks (`add <list> <task>`)  
* ✅ List tasks (`ls <list>`)  
* ✅ Show all lists (`lists`)  
* ✅ Remove tasks (`rm <list> <num>`)  
* ✅ Delete entire lists (`del <list>`)  
* ✅ Mark tasks as done (`done <list> <num>`)  
* ✅ Automatic JSON creation & backup for corrupted files  
* ✅ ANSI color-coded messages (`[OK]`, `[WARN]`, `[ERROR]`)  
* ✅ Timestamps (ISO + short `[dd/mm HH:MM]` format)  

### 🚧 Upcoming Features

* Support for task priorities and tags  
* Filter tasks by status (pending/done)  
* Undo/redo functionality  
* Export/import lists  
* Multi-user support  

---

## 🛠️ Installation

### Prerequisites

* GCC (or any C compiler)  
* Make  
* cJSON library  

### Linux/macOS

```bash
# Clone repository
git clone https://github.com/matheusc457/taskline.git
cd taskline

# Compile
gcc -o taskline main.c cJSON.c -I. -lm

# Run
./taskline
```

### Windows (via MinGW or WSL)

```bash
git clone https://github.com/matheusc457/taskline.git
cd taskline

gcc -o taskline.exe main.c cJSON.c -I. -lm
./taskline.exe
```

---

## 🚀 Usage

### First Run

```
$ ./taskline

Taskline 1.0 - Simple CLI To-Do Manager
Usage: taskline <command> [arguments]

Type 'taskline help' for more commands.
```

### Create a new list

```bash
./taskline new home
```

### Add a task

```bash
./taskline add home "Buy groceries"
```

### List tasks

```bash
./taskline ls home

1. [01/01 10:00] Buy groceries
```

### Mark task as done

```bash
./taskline done home 1
```

### Remove a task

```bash
./taskline rm home 1
```

### Delete a list

```bash
./taskline del home
```

### Show all lists

```bash
./taskline lists
```

---

## 📁 JSON Structure (`tasks.json`)

```json
{
  "lists": {
    "home": [
      {
        "text": "Buy groceries",
        "created": "2026-01-01 10:00",
        "created_short": "[01/01 10:00]",
        "done": false
      }
    ]
  }
}
```

- `text`: Task description  
- `created`: ISO timestamp  
- `created_short`: Short timestamp for display  
- `done`: `true` if task is completed, `false` otherwise  

---

## 🎨 Terminal Colors

- `[OK]` → green  
- `[WARN]` → yellow  
- `[ERROR]` → red  
- Information → blue  

---

## 🤝 Contributing

Contributions are welcome!  

```bash
# Fork the repository
git checkout -b feature/YourFeature
# Make changes
git commit -m "Add some feature"
git push origin feature/YourFeature
# Open a Pull Request
```

**Code style:**  
* C11 standard  
* 4 spaces indentation  
* Comment complex logic  
* Keep functions under ~50 lines  

---

## 📝 License

This project is licensed under **MIT License**. See [LICENSE](LICENSE) for details.

---

## 👨‍💻 Author

Created with ❤️ by [Matheus Campos](https://github.com/matheusc457)

---

⭐ **If you find Taskline useful, please consider giving it a star!**
