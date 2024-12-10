/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1; /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {"SF Mono:size=10"};

static const char *prompt =
    NULL; /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
    /*     fg         bg       */
    // [SchemeNorm] = {"#ebddb2", "#ebddb2"},
    // [SchemeSel] = {"#ebddb2", "#ebddb2"},
    // [SchemeSelHighlight] = {"#b57614", "#ebddb2"},
    // [SchemeNormHighlight] = {"#b57614", "#ebddb2"},
    // [SchemeOut] = {"#ebddb2", "#ebddb2"},
    // [SchemeOutHighlight] = {"#ebddb2", "#ebddb2"},

    // Gruvbox
    [SchemeNorm] = {"#bbbbbb", "#222222"},
    [SchemeSel] = {"#eeeeee", "#504945"},
    [SchemeSelHighlight] = {"#ffc978", "#504945"},
    [SchemeNormHighlight] = {"#ffc978", "#222222"},
    [SchemeOut] = {"#000000", "#00ffff"},
    [SchemeOutHighlight] = {"#ffc978", "#00ffff"},

    // catppuccin mocha
    // [SchemeNorm] = {"#c6d0f5", "#1e1e2e"}, // Normal text on background
    // [SchemeSel] = {"#f4dbd6", "#1e1e2e"},  // Selected text on background
    // [SchemeSelHighlight] =
    //     {"#a6e3a1", "#45475a"}, // Highlighted selected text on background
    // [SchemeNormHighlight] =
    //     {"#a6e3a1", "#1e1e2e"}, // Highlighted normal text on background
    // [SchemeOut] = {"#000000", "#8bd5ca"}, // Output text on teal background
    // [SchemeOutHighlight] =
    //     {"#ffc978", "#8bd5ca"}, // Highlighted output text on teal background
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
