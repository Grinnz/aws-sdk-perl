
package Paws::Route53::ListTrafficPolicyInstancesByHostedZoneResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyInstanceNameMarker => (is => 'ro', isa => 'Str');
  has TrafficPolicyInstances => (is => 'ro', isa => 'ArrayRef[Paws::Route53::TrafficPolicyInstance]', traits => ['Unwrapped'], xmlname => 'TrafficPolicyInstance', required => 1);
  has TrafficPolicyInstanceTypeMarker => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53:: - Arguments for method  on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method  on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method .

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to .

As an example:

  $service_obj->(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more traffic policy instances
to be listed. If the response was truncated, you can get the next group
of C<MaxItems> traffic policy instances by calling
C<ListTrafficPolicyInstancesByHostedZone> again and specifying the
values of the C<HostedZoneIdMarker>,
C<TrafficPolicyInstanceNameMarker>, and
C<TrafficPolicyInstanceTypeMarker> elements in the corresponding
request parameters.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<MaxItems> parameter in the call
to C<ListTrafficPolicyInstancesByHostedZone> that produced the current
response.



=head2 TrafficPolicyInstanceNameMarker => Str

If C<IsTruncated> is C<true>, C<TrafficPolicyInstanceNameMarker> is the
name of the first traffic policy instance in the next group of
C<MaxItems> traffic policy instances.



=head2 B<REQUIRED> TrafficPolicyInstances => ArrayRef[L<Paws::Route53::TrafficPolicyInstance>]

A list that contains one C<TrafficPolicyInstance> element for each
traffic policy instance that matches the elements in the request.



=head2 TrafficPolicyInstanceTypeMarker => Str

If C<IsTruncated> is true, C<TrafficPolicyInstanceTypeMarker> is the
DNS type of the resource record sets that are associated with the first
traffic policy instance in the next group of C<MaxItems> traffic policy
instances.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

