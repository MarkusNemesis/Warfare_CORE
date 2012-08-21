Private ["_dmul", "_fps", "_ACTIVATION_FPS"];
_ACTIVATION_FPS = 30;
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
	TidiMul = round ((_dmul * 100));
	TidiMul = TidiMul / 100;
	PublicVariable 'TidiMul';
	sleep (30 * _dmul); // Markus - This defines the refresh rate of the Tidi.
};