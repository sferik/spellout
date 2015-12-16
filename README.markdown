Spellout
========

[![Build Status](https://travis-ci.org/sferik/spellout.svg?branch=master)](https://travis-ci.org/sferik/spellout)

Spellout is a command-line tool that converts input into the [International
Radiotelephony Spelling Alphabet][nato].

[nato]: https://en.wikipedia.org/wiki/NATO_phonetic_alphabet

It accepts input via command-line arguments or standard input.

#### Examples

    $ spellout cable9
    Charlie Alpha Bravo Lima Echo Niner

    $ echo cable9 > /path/to/file
    $ spellout < /path/to/file
    Charlie Alpha Bravo Lima Echo Niner
