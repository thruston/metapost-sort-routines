% Toby Thurston -- 10 Jan 2017 
%
% Some simple sorting routines 
% The key technique here is to pass the array name as a `suffix` rather than an `expr`.
% This allows you to index the array whose name you pass in (which is what we need).
%
% Arrays are assumed to have numeric values and non-negative integer indexes, starting at 0 with 
% no missing values.
%
% Note also to `save` variables *before* re-declaring them. 
%
%
% Quicksort requires you to pass lo, hi indexes, so you need to know
% how long your array is before you start

vardef quicksort(suffix A)(expr lo, hi) = 
    save p; numeric p;
    if lo < hi:
        p := _partition(A, lo, hi);
        quicksort(A, lo, p);
        quicksort(A, p+1, hi);
    fi
enddef;

% using Hoare's original two pointer scheme
vardef _partition(suffix A)(expr lo, hi) =
    save i,j,t,pivot;
    numeric pivot,t;  % values, we are sorting numbers... 
    numeric i,j;      % indexes
    pivot := A[lo];
    i := lo - 1;
    j := hi + 1;
    forever:
        forever:
            i := i + 1;
            exitif A[i] >= pivot;
        endfor
        forever:
            j := j - 1;
            exitif A[j] <= pivot;
        endfor
        exitif i >= j;
        t := A[i]; A[i] := A[j]; A[j] := t;
    endfor
    j
enddef;    

vardef insertionsort(suffix A) = 
    save i,j,t; 
    numeric t;  % values, we are sorting numbers
    numeric i,j; % indexes
    i := 0;
    forever:
        i := i+1;
        exitif not known A[i];
        j := i;
        forever:
            exitif j <= 0;
            exitif A[j-1] <= A[j];
            t := A[j-1]; A[j-1] := A[j]; A[j] := t;
            j := j - 1;
        endfor
    endfor
enddef;

vardef array_length(suffix A) = 
    save i;
    numeric i;
    i := 0;
    forever:
        i := i+1;
        exitif not known A[i];
    endfor
    i
enddef;
