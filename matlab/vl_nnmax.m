function [y,dx2] = vl_nnmax(M, varargin)
% VL_NNMAX Element-wise maximum
%   Y = VL_NNMAX(M, X1, ..., XM) applies the elementwise max operator to
%   the given M input tensors, each of which should have the same input
%   dimension.
%
% Copyright (C) 2017 Samuel Albanie
% Licensed under The MIT License [see LICENSE.md for details]

  assert(M >= 2, 'at least two input tensors expected') ;
  ins = varargin(1:M) ; varargin(1:M) = [] ;
  [~, dzdy] = vl_argparsepos(struct(), varargin) ;

  shared = cat(5, ins{:}) ;
  if isempty(dzdy)
     y = max(shared, [], 5) ;
  else
    keyboard % not yet implemented
    y = vl_nnbilinearsampler(x, grid, dzdy{1}) ;
  end
