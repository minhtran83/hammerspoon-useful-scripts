# Hammerspoon Useful Scripts 🥄

Welcome to **Hammerspoon Useful Scripts**! This repository is a collection of practical and (hopefully) well-commented [Hammerspoon](http://www.hammerspoon.org/) scripts designed to enhance your macOS productivity, automate common tasks, and showcase the power of this amazing automation tool.

Whether you're new to Hammerspoon or a seasoned user looking for inspiration, you might find something useful here.

## 🌟 Features & Goals

*   **Practicality:** Scripts focused on solving real-world problems and improving daily workflows.
*   **Clarity:** Well-commented code to explain what's happening and why.
*   **Modularity:** (Where applicable) Scripts designed to be easily understood and integrated into your own `init.lua`.
*   **Variety:** A growing collection covering different aspects of macOS automation.
*   **Community:** Contributions and suggestions are welcome!

## 🚀 Getting Started

1.  **Install Hammerspoon:** If you haven't already, download and install Hammerspoon from [hammerspoon.org](http://www.hammerspoon.org/).
2.  **Clone or Download:**
    *   **Clone:** `git clone https://github.com/your-username/hammerspoon-useful-scripts.git`
    *   **Download:** Download the ZIP from the GitHub repository page.
3.  **Explore the Scripts:** Browse the folders to find scripts that interest you.
4.  **Integrate into Your `init.lua`:**
    *   Each script file is generally self-contained or provides instructions on how to use it.
    *   You can copy-paste the relevant code sections into your `~/.hammerspoon/init.lua` file.
    *   Alternatively, for better organization, you can `require` individual Lua files from your `init.lua` if they are structured as modules:
        ```lua
        -- In your ~/.hammerspoon/init.lua
        -- Assuming you've placed the script files/folders from this repo
        -- directly into your ~/.hammerspoon/ directory:

        -- For example, if 'window_mover.lua' is in ~/.hammerspoon/
        require("window_mover")

        -- Or if 'basic_tiler.lua' is in ~/.hammerspoon/window_management/
        require("window_management.basic_tiler")
        ```
        *Make sure the paths in `require` match where you place the script files relative to your `~/.hammerspoon/` directory.*
5.  **Reload Hammerspoon Config:** After making changes to your `init.lua`, select "Reload Config" from the Hammerspoon menu bar icon.

## 📋 Scripts Collection

Below is a list of available scripts. Click on a script name to view its code and specific instructions.

---

### 🪟 Window Management

#### 1. Comprehensive Window Moving & Resizing Hotkeys
*   **File:** [`./window_management/comprehensive_window_mover.lua`](./window_management/comprehensive_window_mover.lua)
*   **Description:** A robust set of hotkeys for precisely moving and resizing the focused window to various screen positions (halves, quarters, thirds, centered, maximized) and for moving windows between multiple monitors. This script forms a great foundation for any window management setup.
*   **Key Features:**
    *   Tiling to left/right/top/bottom halves.
    *   Corner tiling (top-left, top-right, bottom-left, bottom-right).
    *   Support for various percentage widths (30%, 50%, 70%).
    *   Maximize and center window commands.
    *   Seamlessly move windows to the next/previous monitor while maintaining relative size.
    *   Configurable hotkey modifiers.
    *   Zero animation delay for snappy movements.

*(➡️ **How to use:** Copy the contents of `comprehensive_window_mover.lua` into your `~/.hammerspoon/init.lua`, or save it as `comprehensive_window_mover.lua` in your `~/.hammerspoon/` directory and add `require("comprehensive_window_mover")` to your `init.lua`.)*

---

### 🚀 Application Management
* 

---

### ✨ Productivity Helpers
*

---

### ⚙️ System Tweaks
*  

---

### 🛠️ Other Utilities
*   

---

## 💡 Customization

Most scripts will have:
*   Comments explaining variables or hotkeys you might want to change.
*   Clear sections for defining hotkey modifiers (e.g., `mash = {'cmd', 'ctrl', 'option'}`).
*   Variables for adjusting behavior (e.g., `hs.window.animationDuration`).

Feel free to modify them to perfectly suit your needs!

## 🤝 Contributing

Contributions are highly welcome! If you have a useful Hammerspoon script or an improvement to an existing one, please feel free to:

1.  Fork the repository.
2.  Create a new branch for your feature or fix (`git checkout -b feature/my-new-script`).
3.  Add your script. Please ensure it's well-commented.
4.  Commit your changes (`git commit -am 'Add some amazing script'`).
5.  Push to the branch (`git push origin feature/my-new-script`).
6.  Open a Pull Request.

Please try to follow the existing style and structure. If you're adding a new category of script, feel free to create a new subfolder.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## 🙏 Acknowledgements

*   The [Hammerspoon Team](https://github.com/Hammerspoon/hammerspoon/graphs/contributors) for creating and maintaining such a powerful tool.
*   The wider Hammerspoon community for inspiration and shared knowledge.
*   A [ShiftIt](https://github.com/fikovnik/ShiftIt) like [Hammerspoon](http://www.hammerspoon.org/) window management configuration https://github.com/peterklijn/hammerspoon-shiftit

---

Happy scripting!
