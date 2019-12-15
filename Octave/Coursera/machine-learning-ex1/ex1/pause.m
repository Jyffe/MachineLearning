% pause is broken in Octave 5.1.0, this function overrides the default
% functionality
function pause
  while true
    str = input('','s');
    switch str
      case '' % (return key)
        break;
      otherwise
    end
  end
end
