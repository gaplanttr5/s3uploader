pp 'HelloWorld'
require 'aws-sdk-s3'

s3 = Aws::S3::Resource.new(region: 'ap-northeast-1')
obj = s3.bucket('msakamoto.athena-test').object('a/2019/03/10/a.json')
obj.upload_file('./data/2019/03/10/a.json')

