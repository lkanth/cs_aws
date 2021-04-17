namespace: ec2
flow:
  name: aws_describeTags
  workflow:
    - describe_tags:
        do:
          io.cloudslang.amazon.aws.ec2.tags.describe_tags: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      describe_tags:
        x: 241
        'y': 130
        navigate:
          756e3d66-917a-bbc1-fcf8-bb54d2ccbfa0:
            targetId: 51a62abc-11fd-c06f-7ecb-8230f34db90c
            port: SUCCESS
    results:
      SUCCESS:
        51a62abc-11fd-c06f-7ecb-8230f34db90c:
          x: 576
          'y': 131
