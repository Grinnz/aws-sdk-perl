
package Paws::OpsWorks::DescribeUserProfiles;
  use Moose;
  has IamUserArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeUserProfilesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeUserProfiles - Arguments for method DescribeUserProfiles on Paws::OpsWorks

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUserProfiles on the 
AWS OpsWorks service. Use the attributes of this class
as arguments to method DescribeUserProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUserProfiles.

As an example:

  $service_obj->DescribeUserProfiles(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 IamUserArns => ArrayRef[Str|Undef]

An array of IAM user ARNs that identify the users to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUserProfiles in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

