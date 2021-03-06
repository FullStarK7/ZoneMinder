
package ONVIF::Analytics::Elements::CreateRules;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver20/analytics/wsdl' }

__PACKAGE__->__set_name('CreateRules');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ConfigurationToken_of :ATTR(:get<ConfigurationToken>);
my %Rule_of :ATTR(:get<Rule>);

__PACKAGE__->_factory(
    [ qw(        ConfigurationToken
        Rule

    ) ],
    {
        'ConfigurationToken' => \%ConfigurationToken_of,
        'Rule' => \%Rule_of,
    },
    {
        'ConfigurationToken' => 'ONVIF::Analytics::Types::ReferenceToken',
        'Rule' => 'ONVIF::Analytics::Types::Config',
    },
    {

        'ConfigurationToken' => 'ConfigurationToken',
        'Rule' => 'Rule',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Analytics::Elements::CreateRules

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
CreateRules from the namespace http://www.onvif.org/ver20/analytics/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ConfigurationToken

 $element->set_ConfigurationToken($data);
 $element->get_ConfigurationToken();




=item * Rule

 $element->set_Rule($data);
 $element->get_Rule();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Analytics::Elements::CreateRules->new($data);

Constructor. The following data structure may be passed to new():

 {
   ConfigurationToken => $some_value, # ReferenceToken
   Rule =>  { # ONVIF::Analytics::Types::Config
     Parameters =>  { # ONVIF::Analytics::Types::ItemList
       SimpleItem => ,
       ElementItem =>  {
       },
       Extension =>  { # ONVIF::Analytics::Types::ItemListExtension
       },
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

