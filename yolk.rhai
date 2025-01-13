export let on_desktop = SYSTEM.hostname == "HAL8000";
export let on_laptop = !on_desktop;

export let eggs = #{
    foot: #{
        targets: "~/.config/foot",
        templates: ["foot.ini"],
    },
    fish: #{
        targets: "~/.config/fish",
        templates: ["config.fish"],
    },
    starship: #{
        targets: #{
            "starship.toml": "~/.config/starship.toml"
        },
        templates: ["starship.toml"],
    },
    neofetch: #{
        targets: "~/.config/neofetch",
        templates: ["config.conf"],
    },
    nvim: #{
        targets: "~/.config/nvim",
    },
    rofi: #{
        targets: "~/.config/rofi",
    },
    swaync: #{
        targets: "~/.config/swaync",
    },
    waybar: #{
        targets: "~/.config/waybar",
        templates: ["style.css"]
    },
    hypr: #{
        targets: "~/.config/hypr",
    }
};
