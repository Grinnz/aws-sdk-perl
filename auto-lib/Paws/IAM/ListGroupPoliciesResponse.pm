
package Paws::IAM::ListGroupPoliciesResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListGroupPoliciesResponse

=head1 ATTRIBUTES


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all of your
results.



=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.



=head2 B<REQUIRED> PolicyNames => ArrayRef[Str|Undef]

A list of policy names.




=cut

