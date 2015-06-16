
package Paws::KMS::ListKeyPoliciesResponse {
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Truncated => (is => 'ro', isa => 'Bool');

}

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListKeyPoliciesResponse

=head1 ATTRIBUTES

=head2 NextMarker => Str

  

If C<Truncated> is true, this value is present and contains the value
to use for the C<Marker> request parameter in a subsequent pagination
request.









=head2 PolicyNames => ArrayRef[Str]

  

A list of policy names. Currently, there is only one policy and it is
named "Default".









=head2 Truncated => Bool

  

A flag that indicates whether there are more items in the list. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more policies in the
list.











=cut

1;