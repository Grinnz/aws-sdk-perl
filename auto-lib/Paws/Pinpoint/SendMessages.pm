
package Paws::Pinpoint::SendMessages;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has MessageRequest => (is => 'ro', isa => 'Paws::Pinpoint::MessageRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'MessageRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/messages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::SendMessagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendMessages - Arguments for method SendMessages on Paws::Pinpoint

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendMessages on the 
Amazon Pinpoint service. Use the attributes of this class
as arguments to method SendMessages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendMessages.

As an example:

  $service_obj->SendMessages(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str





=head2 B<REQUIRED> MessageRequest => L<Paws::Pinpoint::MessageRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendMessages in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

