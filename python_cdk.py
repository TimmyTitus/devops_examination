from aws_cdk import (
    aws_ec2 as ec2,
    aws_ec2 as ec2,
    aws_sqs as sqs,
    aws_sns as sns,
    aws_secretsmanager as secretsmanager,
    core
)


class MyCdkProjectStack(core.Stack):

    def __init__(self, scope: core.Construct, id: str, **kwargs) -> None:
        super().__init__(scope, id, **kwargs)

        # Create a VPC
        vpc = ec2.Vpc(
            self, "MyVPC",
            cidr="10.30.0.0/16",
            max_azs=2,
            subnet_configuration=[
                ec2.SubnetConfiguration(
                    name="PublicSubnet",
                    subnet_type=ec2.SubnetType.PUBLIC,
                )
            ]
        )

        # Create an EC2 instance in the public subnet
        ec2_instance = ec2.Instance(
            self, "MyEC2Instance",
            instance_type=ec2.InstanceType("t2.micro"),
            machine_image=ec2.MachineImage.latest_amazon_linux(),
            vpc=vpc,
            vpc_subnets=ec2.SubnetSelection(
                subnet_type=ec2.SubnetType.PUBLIC
            )
        )

        # Create an SQS Queue
        sqs_queue = sqs.Queue(
            self, "MyQueue",
            visibility_timeout=core.Duration.seconds(300)
        )

        # Create an SNS Topic
        sns_topic = sns.Topic(
            self, "MyTopic"
        )

        # Create AWS Secrets Manager secret
        secret = secretsmanager.Secret(
            self, "MySecret",
            secret_name="metrodb-secrets",
            generate_secret_string=secretsmanager.SecretStringGenerator(
                secret_string_template='{"username":"admin"}',
                generate_string_key="password",
                exclude_characters='@"\\\''
            )
        )


app = core.App()
MyCdkProjectStack(app, "my-cdk-project-stack")
app.synth()
