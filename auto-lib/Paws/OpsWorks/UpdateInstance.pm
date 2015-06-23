
package Paws::OpsWorks::UpdateInstance {
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str');
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has Os => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::UpdateInstance - Arguments for method UpdateInstance on Paws::OpsWorks

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstance on the 
AWS OpsWorks service. Use the attributes of this class
as arguments to method UpdateInstance.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstance.

As an example:

  $service_obj->UpdateInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AmiId => Str

  

A custom AMI ID to be used to create the instance. The AMI should be
based on one of the standard AWS OpsWorks AMIs: Amazon Linux, Ubuntu
12.04 LTS, or Ubuntu 14.04 LTS. For more information, see Instances

If you specify a custom AMI, you must set C<Os> to C<Custom>.










=head2 Architecture => Str

  

The instance architecture. Instance types do not necessarily support
both architectures. For a list of the architectures that are supported
by the different instance types, see Instance Families and Types.










=head2 AutoScalingType => Str

  

For load-based or time-based instances, the type. Windows stacks can
use only time-based instances.










=head2 EbsOptimized => Bool

  

Whether this is an Amazon EBS-optimized instance.










=head2 Hostname => Str

  

The instance host name.










=head2 InstallUpdatesOnBoot => Bool

  

Whether to install operating system and package updates when the
instance boots. The default value is C<true>. To control when updates
are installed, set this value to C<false>. You must then update your
instances manually by using CreateDeployment to run the
C<update_dependencies> stack command or manually running C<yum> (Amazon
Linux) or C<apt-get> (Ubuntu) on the instances.

We strongly recommend using the default value of C<true>, to ensure
that your instances have the latest security updates.










=head2 B<REQUIRED> InstanceId => Str

  

The instance ID.










=head2 InstanceType => Str

  

The instance type. AWS OpsWorks supports all instance types except
Cluster Compute, Cluster GPU, and High Memory Cluster. For more
information, see Instance Families and Types. The parameter values that
you use to specify the various types are in the API Name column of the
Available Instance Types table.










=head2 LayerIds => ArrayRef[Str]

  

The instance's layer IDs.










=head2 Os => Str

  

The instance's operating system, which must be set to one of the
following.

For Windows stacks: Microsoft Windows Server 2012 R2.

For Linux stacks:

=over

=item * Standard operating systems: an Amazon Linux version such as
C<Amazon Linux 2014.09>, C<Ubuntu 12.04 LTS>, or C<Ubuntu 14.04 LTS>.

=item * Custom AMIs: C<Custom>

=back

The default option is the current Amazon Linux version. If you set this
parameter to C<Custom>, you must use the CreateInstance action's AmiId
parameter to specify the custom AMI that you want to use. For more
information on the standard operating systems, see Operating SystemsFor
more information on how to use custom AMIs with OpsWorks, see Using
Custom AMIs.










=head2 SshKeyName => Str

  

The instance's Amazon EC2 key name.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstance in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

