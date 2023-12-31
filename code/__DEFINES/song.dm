#define MUSICIAN_HEARCHECK_MINDELAY 4
#define MUSIC_MAXLINES 1000
#define MUSIC_MAXLINECHARS 300

#define BPM_TO_TEMPO_SETTING(value) (600 / round(value, 1))

//Return values of song/should_stop_playing()

///When the song should stop being played
#define STOP_PLAYING 1
///Will ignore the instrument checks and play the song anyway.
#define IGNORE_INSTRUMENT_CHECKS 2

///it's what monkeys play!
#define MONKEY_SONG "BPM: 200\nC4/0,14,C,A4-F2,F3,A3,F-F2,A-F,F4,G4,F,D4-Bb2-G2\nD3,G3,D-G2,G3-G2,D,D4-G3,D,B4-B2,G,B3,G-B2,B3-B2\nG4,A4,G,E4-C3,E3,G3,E-C,G-C,E,E4-G,E,C5-E-A3,C4\nA-E3,C,E4-C3,A4-C4,B4-A3-A2,C5-C4,D5-F-B3,D4,B-F3\nD,F4-D3,D4,F-B-B2,G4-D,A4-C-F3,F,C/2,B3/2,A3-C3/2\nB/2,C4,E-C3,F4,G-C,F-F3,F-C,C4/2,B/2,A-A2/2,G3/2\nF/I"
///song played by the mook bard
#define MOOK_SONG "BPM: 240\nA5,B5,C#6,D6,E6/0.17,A/0.5,A/0.25,A3/0.25\nA4/0.25,C#5/0.25,E5/0.25,A/0.25,C#/0.25,E/0.12\nC#6/0.25,C#/0.25,E6/0.25,A3/0.25,A4/0.25\nC#5/0.25,E5/0.25,A/0.25,C#/0.25,E/0.25,D/0.25\nG6/0.25,D/0.17,F6/0.17,C#6/0.5,E6/0.5,D4/0.25\nA/0.25,D5/0.25,F5/0.25,A/0.25,D/0.25,F/0.25\nD6/0.08,F6/0.08,D4/0.25,A/0.25,D5/0.25,F5/0.25\nCn4/0.2,B/0.17,D6/0.17,G5/0.5,G/0.25,B3/0.25\nD4/0.25,G4/0.25,B4/0.25,D/0.25,G/0.25,B/0.12\nB5/0.25,B/0.25,D6/0.25,G3/0.25,G4/0.25,B4/0.25\nF/0.25,G/0.25,B/0.25,F/0.25,D/0.25,F6/0.25\nC6/0.17,E/0.17,B5/0.5,D#/0.5,C4/0.25,G/0.25\nC5/0.25,E5/0.25,G/0.25,C/0.25,E/0.25,C6/0.08\nE6/0.08,C4/0.25,Dn4/0.25,E4/0.25,A5/0.17,B/0.5\nC6/0.25,F5/0.08,F4/0.08,C5/0.08,E5/0.12,G5/0.12\nC6/0.25,E6/0.25,E4/0.08,C5/0.08,B/0.17,F6/0.17\nE6/0.5,B/0.25,E4/0.08,G#4/0.08,C6/0.17,D6/0.5\nE6/0.25,A3/0.25,E4/0.25,C5/0.25,Gn3/0.25\nF5/0.12,A5/0.12,A6/0.25,F3/0.25,F4/0.12,A4/0.12\nC/0.12,F6/0.17,A6/0.17,G#6/0.5,A/0.25,F3/0.25\nF4/0.12,A4/0.12,D#5/0.12,B/0.17,G#/0.17,B6/0.5\nB5/0.25,G#/0.25,E3/0.25,E4/0.12,G#4/0.12\nDn/0.12,E6/0.08,E3/0.25,F#3/0.25,G#3/0.25\nE5/0.17,A5/0.17,E/0.5,E/0.25,A3/0.25,C#4/0.25\nE4/0.25,C#/0.25,E/0.12,A5/0.5,B/0.5,C#6/0.5\nD6/0.5,A3/0.25,C#4/0.25,E/0.25,C#/0.25,E/0.25\nE6/0.08,Gn/0.25,E4/0.25,A4/0.25,C#5/0.25,E/0.25\nA/0.25,C#/0.25,E6/0.17,E/0.5,Fn6/0.5,G6/0.5\nG3/0.25,E4/0.25,A/0.25,C#/0.25,E/0.25,A/0.25\nC#/0.25,F/0.08,A6/0.08,F3/0.25,F4/0.25,A4/0.25\nCn/0.25,F/0.25,A/0.25,C/0.25,G6/0.12,A6/0.12\nG A G F6 G3/0.25 D4/0.25 G4/0.25 B4/0.25 D/0.25\nG/0.25 B/0.25 E6/0.12 G6/0.12 F/0.71 G/0.71 F/0.71\nE3/0.25 E4/0.25 G4/0.25 B/0.25 E/0.25 G/0.25 B/0.25\nA5/0.08 E6/0.08 A3/0.25 E4/0.25 A4/0.25 C#/0.25 E/0.25 A/0.25 C#/0.25 D6/0.17 E6/0.5 F/0.25 B3/0.25 D4/0.12 F4/0.12 B4/0.12 F6/0.25 E/0.25 D6/0.25 G#3/0.25 E4/0.12 G#4/0.12 B/0.12 Cn6/0.12 D/0.25 A3/0.25 A4/0.25 C5/0.25 E5/0.25 G#3/0.25 Gn/0.25 C4/0.25 E4/0.25 A/"
