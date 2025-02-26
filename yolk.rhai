// colors are ordered 0-9 and light to dark
const themes = #{
    // https://coolors.co/e6dddf-f4e3d2-ebd4b1-ddc49c-cfb486-c2a17b-b58d6f-986640-684c38-373230
    "white_golden": #{
	color0: "e6dddf",
	color1: "f4e2d2",
	color2: "ebd4b1",
	color3: "ddc49c",
	color4: "cfb486",
	color5: "c2a17b",
	color6: "b58d6f",
	color7: "986640",
	color8: "684c38",
	color9: "373230",
    },
    "purple_orange": #{
        // TODO
    }
};
const theme_name = if SYSTEM.hostname == "HAL8000" { "white_golden" } else { "purple_orange" };
const theme = themes[theme_name];

const hyprland_themes = switch theme_name {
    "white_golden" => #{
        // hyprland windows
        inactive_border: theme.color6,
        inactive_shadow: theme.color6,

        active_border: theme.color4,
        active_shadow: theme.color4,

        // hyprlock
        textfield: theme.color7,
        textfield_border: theme.color4,
        textfield_border_check: theme.color6,
        login_dots: theme.color0,
        text: theme.color2,
        fail_text: theme.color4,
    },
    "purple_orange" => #{

    },
};

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
	templates: ["hyprland.conf", "autostart.sh", "hyprlock.conf"]
    },
    eww: #{
	targets: "~/.config/eww"
    },
};
