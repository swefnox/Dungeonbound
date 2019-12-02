///@func @screenplay_on_successful_move()

++moves;

if(moves == 8)
{
	with(grid)
	{
		mode = GridMode.Blocking;
	}
}