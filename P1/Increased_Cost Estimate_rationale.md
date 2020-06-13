### Increased Cost Estimate Rationale

#### Task 2.3
Your budget has been increased to $20,000. What resources will you add and why? Think about where to add redundancy and how to improve performance. 

#### Rationale
With the budget increased to $20,000. it opens up a lot more options in term of instance type choices, backups and auto-scaling capacity.
1. Increased the number of snapshots and also the frequency of snapshots taken so that we can keep multiple snapshots at hourly intervals. In case of incidents, we can recover data that is as fresh as an hour ago.
2. Increased EC2 instance type to 'm5.2xlarge' and the maximum number of web and app auto-scalable instances to 12 for better compute performance
3. Increased RBS instance type to 'db.r5.xlarge' and the number of instances to 4 so that we can have 1 instance for each AZ for the extra read performance and redundancy. In addition, we can provision IOPS to achieve even higher performance in the RDS instances.
4. Increased S3 standard bucket size as well as S3 IA bucket size to keep a larger amount of aged media files so that users can keep their media contents to a much longer period for themselves as well as their followers.
