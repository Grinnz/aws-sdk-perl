package Aws::RDS::DBSubnetGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}
1