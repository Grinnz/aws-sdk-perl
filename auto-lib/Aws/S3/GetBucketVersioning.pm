
package Aws::S3::GetBucketVersioning {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketVersioning');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::GetBucketVersioningResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketVersioningResult');
}
1;
