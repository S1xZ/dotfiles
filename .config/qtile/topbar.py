from libqtile.bar import Bar
from libqtile.widget.clock import Clock
from libqtile.widget.cpu import CPU
from libqtile.widget.currentlayout import CurrentLayout
from libqtile.widget.groupbox import GroupBox
from libqtile.widget.memory import Memory
from libqtile.widget.net import Net
from libqtile.widget.systray import Systray
from libqtile.widget.window_count import WindowCount
from libqtile.widget.windowname import WindowName
from libqtile.widget.prompt import Prompt

from unicodes import left_half_circle, right_arrow, left_arrow, right_half_circle
from colors import cattpuccin_mocha

BAR_HEIGHT = 28
# BAR_MARGIN = 5
topbar = Bar(
    [
        GroupBox(
            disable_drag=True,
            active=cattpuccin_mocha.peach.hex,
            inactive=cattpuccin_mocha.blue.hex,
            highlight_method="line",
            block_highlight_text_color=cattpuccin_mocha.subtext1.hex,
            borderwidth=0,
            highlight_color=cattpuccin_mocha.surface0.hex,
            background=cattpuccin_mocha.surface0.hex,
            # spacing=2
        ),
        CurrentLayout(
            background=cattpuccin_mocha.red.hex,
            foreground=cattpuccin_mocha.crust.hex,
            margin=10,
        ),
        WindowName(
            background=cattpuccin_mocha.crust.hex,
            foreground=cattpuccin_mocha.subtext1.hex,
        ),
        Prompt(),
        CPU(
            format="{load_percent}%",
            background=cattpuccin_mocha.crust.hex,
            foreground=cattpuccin_mocha.pink.hex,
        ),
        Memory(
            format="{MemUsed: .0f}{mm}/{MemTotal: .0f}{mm}",
            background=cattpuccin_mocha.crust.hex,
            foreground=cattpuccin_mocha.teal.hex,
        ),
        Systray(background=cattpuccin_mocha.surface1.hex),
        Clock(
            background=cattpuccin_mocha.base.hex,
            foreground=cattpuccin_mocha.text.hex,
            format="\ue641 %I:%M %p %d-%m-%Y",
        ),
    ],
    # background=nord_fox['bg'],
    size=BAR_HEIGHT,
    margin=8,
)
