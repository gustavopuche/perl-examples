use Const::Fast;

use constant converterPatt => qr/converter/;
use constant swtcc => "SWTCC";

if ("converter1" =~ converterPatt)
{
  print "equal";
}
else
{
  print "different";
}
