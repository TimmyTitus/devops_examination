---
Metadata:
  TemplateId: "arn:aws:cloudformation:ca-central-1:471112924097:generatedTemplate/9cf63e30-9493-43f3-b8e5-249c50280b67"
Resources:
  EC2SecurityGroup00sg025faa970f248cb26006OBRT:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SecurityGroup"
    DeletionPolicy: "Retain"
    Properties:
      GroupDescription: "default VPC security group"
      GroupName: "default"
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      SecurityGroupIngress:
      - IpProtocol: "-1"
        FromPort: -1
        SourceSecurityGroupId:
          Fn::GetAtt:
          - "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
          - "DefaultSecurityGroup"
        ToPort: -1
        SourceSecurityGroupOwnerId: "471112924097"
      SecurityGroupEgress:
      - CidrIp: "0.0.0.0/0"
        IpProtocol: "-1"
        FromPort: -1
        ToPort: -1
  EC2SubnetNetworkAclAssociation00aclassoc053802ef950e06563004HwSi:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SubnetNetworkAclAssociation"
    DeletionPolicy: "Retain"
    Properties:
      NetworkAclId:
        Ref: "EC2NetworkAcl00acl0e1948c399dff9ea700YWUmQ"
      SubnetId:
        Ref: "EC2Subnet00subnet07d1fc936f384428a008bAA6"
  EC2SecurityGroup00sg04568b986a33b5b4300AOF58:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SecurityGroup"
    DeletionPolicy: "Retain"
    Properties:
      GroupDescription: "default VPC security group"
      GroupName: "default"
      VpcId:
        Ref: "EC2VPC00vpc0af65511f4242b505004PAVx"
      SecurityGroupIngress:
      - IpProtocol: "-1"
        FromPort: -1
        SourceSecurityGroupId:
          Fn::GetAtt:
          - "EC2VPC00vpc0af65511f4242b505004PAVx"
          - "DefaultSecurityGroup"
        ToPort: -1
        SourceSecurityGroupOwnerId: "471112924097"
      SecurityGroupEgress:
      - CidrIp: "0.0.0.0/0"
        IpProtocol: "-1"
        FromPort: -1
        ToPort: -1
  EC2NetworkAcl00acl06177d73403e4e7b2004eAVp:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::NetworkAcl"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      Tags: []
  EC2VPC00vpc0436cc8bb9b7d869a00UXFnL:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::VPC"
    DeletionPolicy: "Retain"
    Properties:
      CidrBlock: "10.50.0.0/16"
      EnableDnsSupport: true
      InstanceTenancy: "default"
      EnableDnsHostnames: false
      Tags:
      - Value: "examvpc"
        Key: "Name"
  EC2Route00rtb040c8be24ce7fa8c900ZdOhQ:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Route"
    DeletionPolicy: "Retain"
    Properties:
      RouteTableId:
        Ref: "EC2RouteTable00rtb040c8be24ce7fa8c900epQH4"
      DestinationCidrBlock:
        Fn::GetAtt:
        - "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
        - "CidrBlock"
      GatewayId: "local"
      VpcEndpointId: "local"
  EC2InternetGateway00igw0572636500e8d046600iZRiX:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::InternetGateway"
    DeletionPolicy: "Retain"
    Properties:
      Tags:
      - Value: "IGW-exam"
        Key: "Name"
  EC2Route00rtb02e4c315580a212ce00HdcDu:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Route"
    DeletionPolicy: "Retain"
    Properties:
      RouteTableId:
        Ref: "EC2RouteTable00rtb02e4c315580a212ce00hpIgr"
      DestinationCidrBlock: "0.0.0.0/0"
      GatewayId:
        Ref: "EC2InternetGateway00igw01436093d36dbced2009waef"
      VpcEndpointId: "igw-01436093d36dbced2"
  EC2SubnetNetworkAclAssociation00aclassoc01dc755e26f4912e900rwWpR:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SubnetNetworkAclAssociation"
    DeletionPolicy: "Retain"
    Properties:
      NetworkAclId:
        Ref: "EC2NetworkAcl00acl06177d73403e4e7b2004eAVp"
      SubnetId:
        Ref: "EC2Subnet00subnet0dd11185f6dd309cc00AfoJz"
  EC2RouteTable00rtb02e4c315580a212ce00hpIgr:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::RouteTable"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0af65511f4242b505004PAVx"
  EC2InternetGateway00igw01436093d36dbced2009waef:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::InternetGateway"
    DeletionPolicy: "Retain"
    Properties:
      Tags: []
  EC2SubnetNetworkAclAssociation00aclassoc09b471c767d36019700OtuKT:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SubnetNetworkAclAssociation"
    DeletionPolicy: "Retain"
    Properties:
      NetworkAclId:
        Ref: "EC2NetworkAcl00acl0e1948c399dff9ea700YWUmQ"
      SubnetId:
        Ref: "EC2Subnet00subnet0bba7d7152d1ca42200L0wcI"
  EC2VPCDHCPOptionsAssociation00vpc0436cc8bb9b7d869a00oe4xy:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::VPCDHCPOptionsAssociation"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      DhcpOptionsId:
        Ref: "EC2DHCPOptions00dopt04e0505148754290b00SuP9Y"
  EC2Route00rtb0c0e240c1fec1b72a00achsB:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Route"
    DeletionPolicy: "Retain"
    Properties:
      RouteTableId:
        Ref: "EC2RouteTable00rtb0c0e240c1fec1b72a006ykRq"
      DestinationCidrBlock:
        Fn::GetAtt:
        - "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
        - "CidrBlock"
      GatewayId: "local"
      VpcEndpointId: "local"
  EC2Subnet00subnet0dd11185f6dd309cc00AfoJz:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Subnet"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      MapPublicIpOnLaunch: true
      EnableDns64: false
      AvailabilityZoneId: "cac1-az1"
      PrivateDnsNameOptionsOnLaunch:
        EnableResourceNameDnsARecord: false
        HostnameType: "ip-name"
        EnableResourceNameDnsAAAARecord: false
      CidrBlock: "10.50.1.0/24"
      Ipv6Native: false
      Tags:
      - Value: "subnet1"
        Key: "Name"
  EC2RouteTable00rtb0c0e240c1fec1b72a006ykRq:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::RouteTable"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      Tags:
      - Value: "examRT"
        Key: "Name"
  EC2Subnet00subnet0bba7d7152d1ca42200L0wcI:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Subnet"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0af65511f4242b505004PAVx"
      MapPublicIpOnLaunch: true
      EnableDns64: false
      AvailabilityZoneId: "cac1-az2"
      PrivateDnsNameOptionsOnLaunch:
        EnableResourceNameDnsARecord: false
        HostnameType: "ip-name"
        EnableResourceNameDnsAAAARecord: false
      CidrBlock: "172.31.0.0/20"
      Ipv6Native: false
      Tags: []
  EC2SubnetNetworkAclAssociation00aclassoc02f5342dd1b5829ad00UeaEg:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SubnetNetworkAclAssociation"
    DeletionPolicy: "Retain"
    Properties:
      NetworkAclId:
        Ref: "EC2NetworkAcl00acl06177d73403e4e7b2004eAVp"
      SubnetId:
        Ref: "EC2Subnet00subnet0b52ab80076a867c000LU9c2"
  EC2Subnet00subnet07d1fc936f384428a008bAA6:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Subnet"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0af65511f4242b505004PAVx"
      MapPublicIpOnLaunch: true
      EnableDns64: false
      AvailabilityZoneId: "cac1-az1"
      PrivateDnsNameOptionsOnLaunch:
        EnableResourceNameDnsARecord: false
        HostnameType: "ip-name"
        EnableResourceNameDnsAAAARecord: false
      CidrBlock: "172.31.16.0/20"
      Ipv6Native: false
      Tags: []
  EC2DHCPOptions00dopt04e0505148754290b00SuP9Y:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::DHCPOptions"
    DeletionPolicy: "Retain"
    Properties:
      DomainName: "ca-central-1.compute.internal"
      DomainNameServers:
      - "AmazonProvidedDNS"
      Tags: []
  EC2SubnetNetworkAclAssociation00aclassoc0d4b80c5ba20d6f4e007IFeg:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SubnetNetworkAclAssociation"
    DeletionPolicy: "Retain"
    Properties:
      NetworkAclId:
        Ref: "EC2NetworkAcl00acl06177d73403e4e7b2004eAVp"
      SubnetId:
        Ref: "EC2Subnet00subnet0ebbfd900b8c5607800RLEuy"
  EC2Route00rtb0c0e240c1fec1b72a003sTpt:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Route"
    DeletionPolicy: "Retain"
    Properties:
      RouteTableId:
        Ref: "EC2RouteTable00rtb0c0e240c1fec1b72a006ykRq"
      DestinationCidrBlock: "0.0.0.0/0"
      GatewayId:
        Ref: "EC2InternetGateway00igw0572636500e8d046600iZRiX"
      VpcEndpointId: "igw-0572636500e8d0466"
  ApplicationAutoScalingScalableTarget00tablemetroddb00tqmsu:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::ApplicationAutoScaling::ScalableTarget"
    DeletionPolicy: "Retain"
    Properties:
      ScalableDimension: "dynamodb:table:ReadCapacityUnits"
      SuspendedState:
        DynamicScalingOutSuspended: false
        ScheduledScalingSuspended: false
        DynamicScalingInSuspended: false
      MinCapacity: 1
      ResourceId: "table/metroddb"
      ServiceNamespace: "dynamodb"
      MaxCapacity: 10
  EC2Subnet00subnet0ac3648e1f290b84e0053Bej:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Subnet"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      MapPublicIpOnLaunch: false
      EnableDns64: false
      AvailabilityZoneId: "cac1-az1"
      PrivateDnsNameOptionsOnLaunch:
        EnableResourceNameDnsARecord: false
        HostnameType: "ip-name"
        EnableResourceNameDnsAAAARecord: false
      CidrBlock: "10.50.2.0/24"
      Ipv6Native: false
      Tags:
      - Value: "subnet2"
        Key: "Name"
  ApplicationAutoScalingScalableTarget00tablemetroddb004qqbg:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::ApplicationAutoScaling::ScalableTarget"
    DeletionPolicy: "Retain"
    Properties:
      ScalableDimension: "dynamodb:table:WriteCapacityUnits"
      SuspendedState:
        DynamicScalingOutSuspended: false
        ScheduledScalingSuspended: false
        DynamicScalingInSuspended: false
      MinCapacity: 1
      ResourceId: "table/metroddb"
      ServiceNamespace: "dynamodb"
      MaxCapacity: 10
  EC2VPC00vpc0af65511f4242b505004PAVx:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::VPC"
    DeletionPolicy: "Retain"
    Properties:
      CidrBlock: "172.31.0.0/16"
      EnableDnsSupport: true
      InstanceTenancy: "default"
      EnableDnsHostnames: true
      Tags: []
  EC2NetworkAcl00acl0e1948c399dff9ea700YWUmQ:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::NetworkAcl"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0af65511f4242b505004PAVx"
      Tags: []
  Route53ResolverResolverRuleAssociation00rslvrautodefinedassocvpc0436cc8bb9b7d869ainternetresolver00ggXJE:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::Route53Resolver::ResolverRuleAssociation"
    DeletionPolicy: "Retain"
    Properties:
      VPCId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      ResolverRuleId: "rslvr-autodefined-rr-internet-resolver"
      Name: "System Rule Association"
  EC2SubnetNetworkAclAssociation00aclassoc0be374a22dc5875cb00pmAyS:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SubnetNetworkAclAssociation"
    DeletionPolicy: "Retain"
    Properties:
      NetworkAclId:
        Ref: "EC2NetworkAcl00acl0e1948c399dff9ea700YWUmQ"
      SubnetId:
        Ref: "EC2Subnet00subnet033ace9c60b8c569000d02Jd"
  DynamoDBTable00metroddb00LX04n:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::DynamoDB::Table"
    DeletionPolicy: "Retain"
    Properties:
      SSESpecification:
        SSEEnabled: false
      TableName: "metroddb"
      AttributeDefinitions:
      - AttributeType: "S"
        AttributeName: "id"
      ContributorInsightsSpecification:
        Enabled: false
      BillingMode: "PROVISIONED"
      PointInTimeRecoverySpecification:
        PointInTimeRecoveryEnabled: false
      ProvisionedThroughput:
        WriteCapacityUnits: 1
        ReadCapacityUnits: 1
      KeySchema:
      - KeyType: "HASH"
        AttributeName: "id"
      DeletionProtectionEnabled: false
      TableClass: "STANDARD"
      Tags: []
      TimeToLiveSpecification:
        Enabled: false
  EC2RouteTable00rtb040c8be24ce7fa8c900epQH4:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::RouteTable"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
  EC2Subnet00subnet033ace9c60b8c569000d02Jd:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Subnet"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0af65511f4242b505004PAVx"
      MapPublicIpOnLaunch: true
      EnableDns64: false
      AvailabilityZoneId: "cac1-az4"
      PrivateDnsNameOptionsOnLaunch:
        EnableResourceNameDnsARecord: false
        HostnameType: "ip-name"
        EnableResourceNameDnsAAAARecord: false
      CidrBlock: "172.31.32.0/20"
      Ipv6Native: false
      Tags: []
  EC2Subnet00subnet0b52ab80076a867c000LU9c2:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Subnet"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      MapPublicIpOnLaunch: false
      EnableDns64: false
      AvailabilityZoneId: "cac1-az2"
      PrivateDnsNameOptionsOnLaunch:
        EnableResourceNameDnsARecord: false
        HostnameType: "ip-name"
        EnableResourceNameDnsAAAARecord: false
      CidrBlock: "10.50.4.0/24"
      Ipv6Native: false
      Tags:
      - Value: "subnet4"
        Key: "Name"
  EC2Subnet00subnet0ebbfd900b8c5607800RLEuy:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::Subnet"
    DeletionPolicy: "Retain"
    Properties:
      VpcId:
        Ref: "EC2VPC00vpc0436cc8bb9b7d869a00UXFnL"
      MapPublicIpOnLaunch: true
      EnableDns64: false
      AvailabilityZoneId: "cac1-az2"
      PrivateDnsNameOptionsOnLaunch:
        EnableResourceNameDnsARecord: false
        HostnameType: "ip-name"
        EnableResourceNameDnsAAAARecord: false
      CidrBlock: "10.50.3.0/24"
      Ipv6Native: false
      Tags:
      - Value: "subnet3"
        Key: "Name"
  EC2SubnetNetworkAclAssociation00aclassoc0e1a9990436995c4400vdzfU:
    UpdateReplacePolicy: "Retain"
    Type: "AWS::EC2::SubnetNetworkAclAssociation"
    DeletionPolicy: "Retain"
    Properties:
      NetworkAclId:
        Ref: "EC2NetworkAcl00acl06177d73403e4e7b2004eAVp"
      SubnetId:
        Ref: "EC2Subnet00subnet0ac3648e1f290b84e0053Bej"
