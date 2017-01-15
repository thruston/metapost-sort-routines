# metapost-sort-routines
A collection of sort routines for MetaPost (the Hobby-Knuth drawing language)

Toby Thurston -- 15 Jan 2017 

For more on Metapost see http://www.tug.org/metapost.html

This package consists of a single file `sorts.mp`

This file contains some simple sort routines for Metapost.  These are useful for
various graphical and geometric algorithms.  They are simple in the sense that
they work with a simple subset of Metapost arrays.  A general Metapost array
can have any valid suffix string as an index, but for the purposes of these
sort routines, your array has to use only non-negative integer indexes,
starting at 0 with no gaps.

- insertionsort

- quicksort

- heapsort

Installation
------------

Put sorts.mp somewhere in your TeXMF tree.  This probably includes your current working directory.


