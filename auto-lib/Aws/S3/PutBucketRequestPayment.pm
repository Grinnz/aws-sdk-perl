
package Aws::S3::PutBucketRequestPayment {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has RequestPaymentConfiguration => (is => 'ro', isa => 'Aws::S3::RequestPaymentConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketRequestPayment');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
