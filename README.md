A collection of handy apps designed for the zBitx transceiver line by HF Signals. These apps were created by JJ, W9JES.


Toolbox Launcher
The central menu that ties everything together — a grid of buttons that launch the other tools and common system actions (start the zBITX app, open the log exporter, calibrate hardware, set the clock, run updates, power off, reboot). You add or remove buttons through menus, and it remembers your setup between sessions. It can also check for and install updates to the toolbox itself. Think of it as the home screen for the whole suite.

HW Calibrator
Calibrates the transmit power output on each ham band, which matters because a single drive setting doesn't produce even power across the whole range from 80M up to 10M. It reads the radio's hardware settings file and shows a table of every transmit band with its frequency range and an editable scale value, so you can tune the power band by band and save it back to the radio. It also has buttons to start and stop the main zBitx application — the start opens a terminal window so you can watch the radio boot up. Handy whenever your output is too hot on some bands and too weak on others, or after a firmware change that resets your power settings.

Log Exporter
Exports your logged contacts from the sBITX logbook into ADIF (.adi) files — the standard format for importing into logging programs like LoTW, QRZ, or Club Log. It shows your QSOs in a sortable, searchable table, lets you filter by a date range (with a calendar picker), and select which records to export. Before exporting it validates the records and warns you about problems (missing callsigns, bad dates, unusual modes) so you catch issues before they reach another program. This is the tool for getting your contacts out of the radio and into your permanent log or an awards program.

Macro Manager
Creates and edits macro files (.mc) for the sBITX — the canned text and shortcuts you send during a QSO (like sending your callsign, a signal report, or an exchange). You pick macros from a dropdown that lists each one with a description, insert them into your text, and the editor highlights recognized macros in blue so you can see them at a glance. It handles the standard fields like {CALL}, {MYCALL}, {SENTRST}, and grid squares, plus the FT8 shortcut tokens. New, Open, Save, and Save As round it out. Good for anyone setting up their function-key macros for contesting or casual operating.

Manager
Remote-controls the radio over a network connection so you can operate it from a computer instead of the front panel. It stores your favorite frequencies as memories — each with its own mode, bandwidth, IF, and AGC — and tuning to any of them is a single click; a built-in editor lets you add, edit, reorder, and save them. Full menus give you direct control over frequency, mode, VFO, tuning step, RIT, split, waterfall span, AGC, audio, RF output, and F1–F12 macros. It decodes incoming FT8-style messages in a live window that highlights CQ calls, lets you click one to reply automatically, and can save the whole message log to a timestamped file. It can also scan through your memory channels automatically with an adjustable dwell time, and comes in dark or light (colorblind-friendly) themes. This is the tool for running the radio, managing memories, and working digital modes from your desk.

Time Keeper
Manages the clock, which matters because digital modes like FT8 need accurate time. It shows both the system clock (ticking live) and the hardware real-time clock, and lets you sync the hardware clock from the system clock, set the time by hand, or sync everything from the internet via NTP. Handy for field operation where the Pi may not have a network connection to set its own time automatically.

Update Manager
Handles keeping the Pi and the radio software current. Two buttons cover a standard system update-and-upgrade and updating the zBITX application itself. A live terminal pane on the right shows the output as commands run, so you can watch progress in real time, and a progress bar indicates when it's working. Useful for keeping the system patched without needing to drop to a command line.

USB Mode
Switches what the radio's USB port does, which matters because the same physical port can either control the radio or accept a mouse and keyboard, but not both at once. CAT Mode turns the port into a virtual COM port plus audio interface so logging and digital-mode software can control the rig and pass audio (emulating an Icom IC-746, CI-V address 56, with USB Microphone in and Speaker SINK out); Mouse/Keyboard Mode lets you plug in input devices and use the radio as a standalone station. One button flips between them, it shows the current mode in color, and it reminds you that a reboot is required for the change to take effect. It can also be run from a script or terminal with --status, --cat, or --mouse. This is the tool for moving the radio between computer-controlled operation and standalone use.
