### Increased Cost Estimate Rationale

#### Task 2.2
Your budget has been reduced from $8,000-$10,000 to a maximum of $6,500. What services will you modify to meet this new budget?

#### Rationale
In order to meet the new budget reducing to a maximum of $6,500, I did the following changes to the initial cost estimate.
1. Decreased the number of database snapshots from 2 to 1 and changed the frequency of snapshots taken from 2x daily to daily. Taking database snapshots is imparative in disaster recovery, but we can suvive having a single snapshot daily rather than twice daily.
2. Took advantage of the pricing model of standard reserved instances and commited to a reservation term of 1 year with monthly payment option for ES2 instances and RDS instances
3. Scaled down the instance type for EC2 from'm5.xlarge' to 't3.medium'. We can rely on auto-scaling to cope with traffic spikes that are expected to occur during certain times of the day. 
4. Scaled down the instance type for RDS from 'db.r5.xlarge' to 'db.r5.large'. Although the 'db.r5.large' has less CPU cores and memory, it also comes with identical networking performance and EBS bandwidth to 'db.r5.xlarge'. With less budget, it is a more economical choice.
5. Moved aged media files from standard S3 to S3 IA considering most of our clients are only interested in posts or media that are posted recently and we can move old files to S3 IA to save on S3 costs
