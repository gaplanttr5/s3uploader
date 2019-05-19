pp 'HelloWorld'
require 'aws-sdk-s3'

local_path = './data/a/2020/03/10/a.json'
s3_path = local_path.match(/.\/data\/(.*)$/)[1]

s3 = Aws::S3::Resource.new(region: 'ap-northeast-1')
obj = s3.bucket('msakamoto.athena-test').object(s3_path)
obj.upload_file(local_path)

