Private ["_dmul", "_fps", "_ACTIVATION_FPS"];
_ACTIVATION_FPS = 25;
diag_log "[CORE] Time dilation module initialized.";
while {true} do
{
	_fps = diag_fps;
	if (_fps < _ACTIVATION_FPS) then // If the FPS is less than 25, then Tidi kicks in.
	{
		_dmul = (_fps / _ACTIVATION_FPS);
	}
	else
	{
		_dmul = 1;
	};
	if (_dmul < 0.1) then {_dmul = 0.1}; // Limit the lower bound of the multiplier so that it doesn't make things instant.
	
	diag_log format ["[CORE] Time dilation: 1 sec = %1. Server FPS: %2", _dmul, _fps];
	
	// Return
	WF_Logic setVariable['Tidimul', _dmul];
	TidiMul = round (100 - (_dmul * 100));
	PublicVariable 'TidiMul';
	sleep (30); // Markus - This defines the refresh rate of the Tidi. This should probably become a once every 30 seconds thing and should sample three times over 1 second and get the average.
};