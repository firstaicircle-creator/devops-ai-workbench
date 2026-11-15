# AWS safety checklist

Run through this before any AWS work.

- [ ] Root account has MFA enabled.
- [ ] A budget alert (about $5) exists with email notification.
- [ ] Working as an IAM user, not root.
- [ ] Current Free Tier terms have been read (credit-based, with expiry).
- [ ] `terraform plan` reviewed before `terraform apply`.
- [ ] Session ends with `terraform destroy`.
- [ ] Leftover check: EC2 instances, EBS volumes, Elastic IPs, NAT gateways, load balancers, EKS clusters in every region used.

Useful leftover check:

```bash
aws resourcegroupstaggingapi get-resources --region "$AWS_REGION" \
  --query 'ResourceTagMappingList[].ResourceARN' --output table
```
