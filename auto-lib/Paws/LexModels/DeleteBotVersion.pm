
package Paws::LexModels::DeleteBotVersion;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name' , required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBotVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{name}/versions/{version}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::DeleteBotVersion - Arguments for method DeleteBotVersion on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBotVersion on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method DeleteBotVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBotVersion.

As an example:

  $service_obj->DeleteBotVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the bot.



=head2 B<REQUIRED> Version => Str

The version of the bot to delete. You cannot delete the C<$LATEST>
version of the bot. To delete the C<$LATEST> version, use the
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBotVersion in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

