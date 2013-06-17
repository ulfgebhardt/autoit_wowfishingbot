#include <Array.au3>

Func _ArraySize( $aArray )
	SetError( 0 )
	
	$index = 0
	
	Do
		$pop = _ArrayPop( $aArray )
		$index = $index + 1
	Until @error = 1
	
	Return $index - 1
EndFunc