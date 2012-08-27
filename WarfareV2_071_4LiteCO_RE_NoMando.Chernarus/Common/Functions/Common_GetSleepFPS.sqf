Private ["_delay"];

_delay = _this;
// Markus - Made this script less WTF benny. The IF statement block has been inverted and the upper bound of the range has been removed.
if (diag_fps > 15) exitWith {_delay};
if (diag_fps <= 5) exitWith {_delay * 0.50};
if (diag_fps <= 7) exitWith {_delay * 0.70};
if (diag_fps <= 10) exitWith {_delay * 0.75};
if (diag_fps <= 15) exitWith {_delay * 0.85};
/// Markus
_delay