package ONVIF::Analytics::Types::IntRectangleRange;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %XRange_of :ATTR(:get<XRange>);
my %YRange_of :ATTR(:get<YRange>);
my %WidthRange_of :ATTR(:get<WidthRange>);
my %HeightRange_of :ATTR(:get<HeightRange>);

__PACKAGE__->_factory(
    [ qw(        XRange
        YRange
        WidthRange
        HeightRange

    ) ],
    {
        'XRange' => \%XRange_of,
        'YRange' => \%YRange_of,
        'WidthRange' => \%WidthRange_of,
        'HeightRange' => \%HeightRange_of,
    },
    {
        'XRange' => 'ONVIF::Analytics::Types::IntRange',
        'YRange' => 'ONVIF::Analytics::Types::IntRange',
        'WidthRange' => 'ONVIF::Analytics::Types::IntRange',
        'HeightRange' => 'ONVIF::Analytics::Types::IntRange',
    },
    {

        'XRange' => 'XRange',
        'YRange' => 'YRange',
        'WidthRange' => 'WidthRange',
        'HeightRange' => 'HeightRange',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::IntRectangleRange

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
IntRectangleRange from the namespace http://www.onvif.org/ver10/schema.

Range of a rectangle. The rectangle itself is defined by lower left corner position and size. Units are pixel.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * XRange


=item * YRange


=item * WidthRange


=item * HeightRange




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::IntRectangleRange
   XRange =>  { # ONVIF::Analytics::Types::IntRange
     Min =>  $some_value, # int
     Max =>  $some_value, # int
   },
   YRange =>  { # ONVIF::Analytics::Types::IntRange
     Min =>  $some_value, # int
     Max =>  $some_value, # int
   },
   WidthRange =>  { # ONVIF::Analytics::Types::IntRange
     Min =>  $some_value, # int
     Max =>  $some_value, # int
   },
   HeightRange =>  { # ONVIF::Analytics::Types::IntRange
     Min =>  $some_value, # int
     Max =>  $some_value, # int
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

