export let data = #{
    for_vcs: LOCAL,
    cool_setting: if SYSTEM.hostname == "foo" { 10 } else { 25 }
};
export let eggs = #{
    foot: #{
        targets: "~/.config/foot",
        templates: ["foot.ini"],
    },
    fish: #{
        targets: "~/.config/fish",
        templates: ["fish.config"],
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
    },
    hypr: #{
        targets: "~/.config/hypr",
    }
};
