# terraform-examples

A reference repository of Terraform with canonical and as-simple-as-possible demonstrations of Terraform functionality and features.

## Why?

At Container Solutions we find we regularly need chunks of Terraform to demonstrate something specific, such as:

- A simple EC2 instance

- A bespoke VPC

- A Windows EC2 instance with an EBS volume

This might be to do a basic test of something, find an example to tinker with, or send to someone to get them going.

## Usage

To help get started with these examples, there are scripts available in `bin` and in local folders.

Here's an example run:

```
$ git clone https://github.com/ContainerSolutions/terraform-examples
$ cd terraform-examples
$ cd aws/aws_vpc
$ ./run.sh
Input AWS_ACCESS_KEY_ID
KEY
Input AWS_SECRET_ACCESS_KEY
<secret>
...
```

If you want to skip the manual key/id inputs, then export them.

See `bin/README.md` for more information.

## Where is...?

If you want to look for a specific example, try the [index](INDEX.md).

## Sections

TODO



## Principles

The examples seek to be:

- As simple as possible to illustrate the functionality

- Self-contained (ie limited to one `.tf` file)

- Non-conflicting (eg resource names are unique)

- Clear (eg resource names are verbose and unambiguous)

## Sources / Thanks To

[Learn Terraform The Hard Way](https://leanpub.com/learnterraformthehardway)
TODO