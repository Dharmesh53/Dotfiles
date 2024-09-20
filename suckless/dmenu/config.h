/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1; /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {"FiraCode Nerd Font:size=10"};

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
    //
    [SchemeNorm] = {"#bbbbbb", "#222222"},
    [SchemeSel] = {"#eeeeee", "#504945"},
    [SchemeSelHighlight] = {"#ffc978", "#504945"},
    [SchemeNormHighlight] = {"#ffc978", "#222222"},
    [SchemeOut] = {"#000000", "#00ffff"},
    [SchemeOutHighlight] = {"#ffc978", "#00ffff"},
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";