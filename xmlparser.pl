#!/usr/bin/perl -w
use XML::LibXML;

use feature 'say';

use constant SWTCC_ATTR => "\@orderId,'SWTCC100'";

my $parser = XML::LibXML->new;
# find title elements
$doc = $parser->parse_file("./ReleasePackage.xml"); 

# print the text in the title elements
my @nodes = $doc->findnodes("content/generaldevices/applications/*[\@swVariant='base']"); 
my $nodeValue = $nodes[0]->findvalue('@path');

# print "Xml parser test\n";
# say "Nodes found: ". @nodes;
# say "nodes=@nodes";
# say "";
# say "path = $nodeValue";

sub GeneralDevices2ConstraintsFindValue
{
  my ($first, $second, $attr, $spec) = @_;

  # my ($basenodes) = $spec->findnodes($base);
  my @node = $spec->findnodes("//application[contains($first) and contains($second)]");

  if (@node == 1)
  {
    return $node[0]->findvalue($attr);
  }
  else
  {
    return
  }
  
}

say GeneralDevices2ConstraintsFindValue(SWTCC_ATTR, "\@swVariant,'base'",'@path',$doc);
say GeneralDevices2ConstraintsFindValue(SWTCC_ATTR, "\@swVariant,'custom'",'@path',$doc);

