#!/usr/bin/perl -w
use XML::LibXML;

my $parser = XML::LibXML->new;
$doc = $parser->parse_file("ReleasePackage.xml"); # find title elements
my @nodes = $doc->findnodes("/content/generaldevices/applications"); # print the text in the title elements
foreach my $node (@nodes)
{
  print $node->firstChild->data, "\n";
}
