bitcoin'
i

-------

Freicoin is released under the conjunctive terms of BOTH version 3
of the GNU Affero General Public License as published by the Free
Software Foundation AND the MIT/X11 software license. See
[COPYING](COPYING) for more information.

Development process
-------------------

Developers work in their own trees, then submit pull requests when they think
their feature or bug fix is ready.

If it is a simple/trivial/non-controversial change, then one of the Freicoin
development team members simply pulls it.

If it is a *more complicated or potentially controversial* change, then the patch
submitter will be asked to start a discussion (if they haven't already) on the
[mailing list](http://sourceforge.net/mailarchive/forum.php?forum_name=freicoin-development).

The patch will be accepted if there is broad consensus that it is a good thing.
Developers should expect to rework and resubmit patches if the code doesn't
match the project's coding conventions (see [doc/coding.md](doc/coding.md)) or are
controversial.

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/freicoin/freicoin/tags) are created
regularly to indicate new official, stable release versions of Freicoin.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test. Please be patient and help out, and
remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write unit tests for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run (assuming they weren't disabled in configure) with: `make check`

Every pull request is built for both Windows and Linux on a dedicated server,
and unit and sanity tests are automatically run. The binaries produced may be
used for manual QA testing — a link to them will appear in a comment on the
pull request posted by [FreicoinPullTester](https://github.com/FreicoinPullTester). See https://github.com/TheBlueMatt/test-scripts
for the build/test scripts.

### Manual Quality Assurance (QA) Testing

 <?xml version="1.0" encoding="UTF-8"?>
<rss xmlns:atom="http://www.w3.org/2005/Atom" version="2.0">
   <channel>
      <title>AWS Organizations Release Notes</title>
      <link>https://docs.aws.amazon.com/organizations/latest/userguide/</link>
      <description>Document history for the AWS Organizations User Guide.</description>
      <atom:link href="https://docs.aws.amazon.com/organizations/latest/userguide/aws-organizations-release-notes.rss"
                 rel="self"
                 type="application/rss+xml"/>
      <lastBuildDate>Sat, 4 Feb 2023 11:04:34 GMT</lastBuildDate>
      <item>
         <title>Updated the AWSOrganizationsFullAccess and AWSOrganizationsReadOnlyAccess
                    managed policies</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_available-policies.html#ref-iam-managed-policies-updates</link>
         <description>Both managed policies were updated to enable write or read access to contacts for
                    accounts.</description>
         <pubDate>Fri, 21 Oct 2022 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Updated_the_AWSOrganizationsFullAccess_and_AWSOrganizationsReadOnlyAccess
____________________managed_policies_2022-10-21</guid>
      </item>
      <item>
         <title>Updated the AWSOrganizationsFullAccess managed policy</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_available-policies.html#ref-iam-managed-policies-updates</link>
         <description>The managed policy was updated to allow creating an organization by adding the
                    permission required to create the service linked role needed by a new
                    organization.</description>
         <pubDate>Wed, 24 Aug 2022 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Updated_the_AWSOrganizationsFullAccess_managed_policy_2022-08-24</guid>
      </item>
      <item>
         <title>Organizations close account capability from the AWS Organizations console</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html</link>
         <description>Principals in the management account can close member accounts from the
                    AWS Organizations console, and protect member accounts from accidental closure by using
                    IAM policies.</description>
         <pubDate>Tue, 29 Mar 2022 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_close_account_capability_from_the_AWS_Organizations_console_2022-03-29</guid>
      </item>
      <item>
         <title>Updated announcement to update alternate contacts with AWS Organizations
                    console</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_update_contacts.html</link>
         <description>Organizations now provides ability to update alternate contacts for accounts within
                    your organization using the AWS Organizations console. Announce new capability and points
                    to Account Management Reference for instructions. </description>
         <pubDate>Tue, 8 Feb 2022 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Updated_announcement_to_update_alternate_contacts_with_AWS_Organizations
____________________console_2022-02-08</guid>
      </item>
      <item>
         <title>Organizations managed policy updates - Update to an existing policy</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_available-policies.html</link>
         <description>Updated the AWSOrganizationsFullAccess and AWSOrganizationsReadOnlyAccess
                    managed policies to allow account API permissions required to update or view
                    account alternate contacts via the AWS Organizations console. </description>
         <pubDate>Mon, 7 Feb 2022 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_managed_policy_updates_-_Update_to_an_existing_policy_2022-02-07</guid>
      </item>
      <item>
         <title>Organizations integration with Amazon DevOpsÂ Guru</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-devops.html</link>
         <description>You can integrate Amazon DevOpsÂ Guru with AWS Organizations to monitor application health
                    holistically across all of your organization accounts and gain insights.</description>
         <pubDate>Mon, 3 Jan 2022 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_integration_with_Amazon_DevOpsÂ Guru_2022-01-03</guid>
      </item>
      <item>
         <title>Organizations integration with Amazon Detective</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-detective.html</link>
         <description>You can integrate Amazon Detective with AWS Organizations to ensure that your Detective
                    behavior graph provides visibility into the activity for all of your
                    organization accounts.</description>
         <pubDate>Thu, 16 Dec 2021 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_integration_with_Amazon_Detective_2021-12-16</guid>
      </item>
      <item>
         <title>Organizations integration with AWS Config now supports multi-account multi-region data
                    aggregation.</title>
         <link>https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli</link>
         <description>You can use a delegated administrator account to aggregate resource
                    configuration and compliance data from all of the member accounts your
                    organization. For more information, see &lt;a href="https://docs.aws.amazon.com/config/latest/developerguide/aggregate-data.html"&gt;Multi-account multi-region data
                        aggregation&lt;/a&gt;in the &lt;em&gt;AWS Config Developer Guide&lt;/em&gt;.</description>
         <pubDate>Wed, 16 Jun 2021 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_integration_with_AWS_Config_now_supports_multi-account_multi-region_data
____________________aggregation._2021-06-16</guid>
      </item>
      <item>
         <title>Organizations integration with AWS Firewall Manager now includes support for a delegated
                    administrator</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-fms.html#integrate-enable-da-fms</link>
         <description>You can now designate a member account in your organization to be the Firewall Manager
                    administrator for the entire organization. This allows for better separation of
                    permissions from the organization's management account.</description>
         <pubDate>Fri, 30 Apr 2021 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_integration_with_AWS_Firewall_Manager_now_includes_support_for_a_delegated
____________________administrator_2021-04-30</guid>
      </item>
      <item>
         <title>Organizations backup policies now support continuous backup</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide//orgs_manage_policies_backup_syntax</link>
         <description>You can use the AWS Backup continuous backups feature with your organization's
                    backup policies.</description>
         <pubDate>Wed, 10 Mar 2021 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_backup_policies_now_support_continuous_backup_2021-03-10</guid>
      </item>
      <item>
         <title>Organizations integration with AWS CloudFormation StackSets now includes support for a
                    delegated administrator</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-cloudformation.html#integrate-enable-da-cloudformation</link>
         <description>You can now designate a member account in your organization to be the AWS CloudFormation
                    StackSets administrator for the entire organization. This allows for better
                    separation of permissions from the organization's management account.</description>
         <pubDate>Thu, 18 Feb 2021 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_integration_with_AWS_CloudFormation_StackSets_now_includes_support_for_a
____________________delegated_administrator_2021-02-18</guid>
      </item>
      <item>
         <title>Continue inviting accounts while you enable all features </title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html</link>
         <description>AWS updated the process to enable all features in an organization. You can
                    now continue to invite new accounts to join your organization while you wait for
                    existing accounts to respond to their invitations.</description>
         <pubDate>Wed, 3 Feb 2021 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Continue_inviting_accounts_while_you_enable_all_features__2021-02-03</guid>
      </item>
      <item>
         <title>Introduces version 2.0 of the AWS Organizations console</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/document-history.html</link>
         <description>AWS introduced a new version of the AWS console. All of the documentation
                    has been updated to reflect the new way of performing tasks.</description>
         <pubDate>Thu, 21 Jan 2021 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Introduces_version_2.0_of_the_AWS_Organizations_console_2021-01-21</guid>
      </item>
      <item>
         <title>Organizations now supports integration with AWS Marketplace</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-marketplace.html</link>
         <description>You can now enable AWS Marketplace to more easily share your software licenses across
                    all of the accounts in your organization.</description>
         <pubDate>Thu, 3 Dec 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_now_supports_integration_with_AWS_Marketplace_2020-12-03</guid>
      </item>
      <item>
         <title>Organizations now supports integration with Amazon S3 Lens</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/services_that_can_integrate-s3lens.html</link>
         <description>Amazon S3 Lens supports both trusted access and delegated administrator with Organizations.
                    For details, see &lt;a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html"&gt;Amazon S3 Storage Lens&lt;/a&gt; in the
                        &lt;em&gt;Amazon Simple Storage Service User Guide&lt;/em&gt;.</description>
         <pubDate>Wed, 18 Nov 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_now_supports_integration_with_Amazon_S3_Lens_2020-11-18</guid>
      </item>
      <item>
         <title>Cross-account backup copies</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup_syntax.html</link>
         <description>When you use backup policies to backup the resources in your organization, you
                    can now store copies of your backup in other AWS accounts in the
                    organization.</description>
         <pubDate>Wed, 18 Nov 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Cross-account_backup_copies_2020-11-18</guid>
      </item>
      <item>
         <title>AWS Regions in China now support AWS Resource Access Manager as an Organizations trusted
                    service</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/document-history.html</link>
         <description>You can now use AWS RAM features that integrate with Organizations as a trusted service
                    when you use Organizations and AWS RAM in China.</description>
         <pubDate>Wed, 18 Nov 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#AWS_Regions_in_China_now_support_AWS_Resource_Access_Manager_as_an_Organizations_trusted
____________________service_2020-11-18</guid>
      </item>
      <item>
         <title>Organizations now supports integration with AWS Security Hub</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-securityhub.html</link>
         <description>You can enable Security Hub across all of the accounts in your organization, and
                    designate one of your organization's member accounts as the delegated
                    administrator account for Security Hub.</description>
         <pubDate>Thu, 12 Nov 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_now_supports_integration_with_AWS_Security_Hub_2020-11-12</guid>
      </item>
      <item>
         <title>Renamed the master account</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/document-history.html</link>
         <description>AWS Organizations changed the name of the â€œmaster accountâ€ to â€œmanagement accountâ€.
                    This is a name change only, and there is no change in functionality.</description>
         <pubDate>Tue, 20 Oct 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Renamed_the_master_account_2020-10-20</guid>
      </item>
      <item>
         <title>New Best Practices section and topics</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_best-practices.html</link>
         <description>Added a new section for best practices for AWS Organizations. The new section includes
                    topics that discuss best practices for the management account and member account
                    root users and password management.</description>
         <pubDate>Tue, 6 Oct 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#New_Best_Practices_section_and_topics_2020-10-06</guid>
      </item>
      <item>
         <title>Added new best practices section and first two pages</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_best-practices.html</link>
         <description>There is a new section for topics that describe best practices for AWS Organizations.
                    This update includes a topic for best practices for an organization's management
                    account and a topic for best practices for member accounts.</description>
         <pubDate>Fri, 2 Oct 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Added_new_best_practices_section_and_first_two_pages_2020-10-02</guid>
      </item>
      <item>
         <title>Organizations backup policies now support application-consistent backups on Windows
                    EC2 instances by using VSS (Volume Shadow Copy Service)</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup_syntax.html</link>
         <description>Backup policies support a new &lt;code class="code"&gt;advanced_backup_settings&lt;/code&gt;" section.
                    The first entry in this new section is an &lt;code class="code"&gt;ec2&lt;/code&gt; setting called
                        &lt;code class="code"&gt;WindowsVSS&lt;/code&gt; that you can enable or disable. For details, see
                        &lt;a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/windows-backup.html"&gt;Creating
                        a VSS-Enabled Windows Backup&lt;/a&gt; in the
                        &lt;em&gt;AWS Backup Developer Guide&lt;/em&gt;.</description>
         <pubDate>Thu, 24 Sep 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_backup_policies_now_support_application-consistent_backups_on_Windows
____________________EC2_instances_by_using_VSS_(Volume_Shadow_Copy_Service)_2020-09-24</guid>
      </item>
      <item>
         <title>Organizations supports tag-on-create and tag-based access control</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html</link>
         <description>You can add tags to Organizations resources when you create them. You can use &lt;a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html"&gt;tag
                        policies&lt;/a&gt; to standardize tag usage on Organizations resources. You can use
                        &lt;a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_iam_tbac.html"&gt;IAM policies to restrict access to only resources that have specified tag
                        keys and values&lt;/a&gt;.</description>
         <pubDate>Tue, 15 Sep 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Organizations_supports_tag-on-create_and_tag-based_access_control_2020-09-15</guid>
      </item>
      <item>
         <title>Added AWS Health as a trusted service</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-health.html</link>
         <description>You can aggregate AWS Health events across accounts in your
                    organization.</description>
         <pubDate>Tue, 4 Aug 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Added_AWS_Health_as_a_trusted_service_2020-08-04</guid>
      </item>
      <item>
         <title>Artificial Intelligence (AI) services opt-out policies</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html</link>
         <description>You can use AI services opt-out policies to control whether AWS AI services may
                    store and use customer content processed by those services (AI content) for the
                    development and continuous improvement of AWS AI services and
                    technologies.</description>
         <pubDate>Wed, 8 Jul 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Artificial_Intelligence_(AI)_services_opt-out_policies_2020-07-08</guid>
      </item>
      <item>
         <title>Added backup policies and integration with AWS Backup</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html</link>
         <description>You can use backup policies to create and enforce backup policies across all
                    of the accounts in your organization.</description>
         <pubDate>Wed, 24 Jun 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Added_backup_policies_and_integration_with_AWS_Backup_2020-06-24</guid>
      </item>
      <item>
         <title>Support delegated administration for IAM Access Analyzer</title>
         <link>https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-settings.html#access-analyzer-delegated-administrator</link>
         <description>Enables you to delegate administrative access for Access Analyzer in your
                    organization to a designated member account.</description>
         <pubDate>Mon, 30 Mar 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Support_delegated_administration_for_IAM_Access_Analyzer_2020-03-30</guid>
      </item>
      <item>
         <title>Integration with AWS CloudFormation StackSets</title>
         <link>https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/what-is-cfnstacksets.html</link>
         <description>You can create a service-managed stack set to deploy stack instances to
                    accounts managed by AWS Organizations.</description>
         <pubDate>Tue, 11 Feb 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Integration_with_AWS_CloudFormation_StackSets_2020-02-11</guid>
      </item>
      <item>
         <title>Integration with Compute Optimizer</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>Compute Optimizer was added as a service that can work with accounts in your
                    organization.</description>
         <pubDate>Tue, 4 Feb 2020 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Integration_with_Compute_Optimizer_2020-02-04</guid>
      </item>
      <item>
         <title>Tag policies</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html</link>
         <description>You can use tag policies to help standardize tags across resources in your
                    organization's accounts.</description>
         <pubDate>Tue, 26 Nov 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Tag_policies_2019-11-26</guid>
      </item>
      <item>
         <title>Integration with Systems Manager</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>You can synchronize operations data across all AWS accounts in your
                    organization in Systems Manager Explorer.</description>
         <pubDate>Tue, 26 Nov 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Integration_with_Systems_Manager_2019-11-26</guid>
      </item>
      <item>
         <title>aws:PrincipalOrgPaths</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions_overview.html</link>
         <description>New global condition key checks the AWS Organizations path for the IAM user, IAM
                    role, or AWS account root user who is making the request. </description>
         <pubDate>Wed, 20 Nov 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#aws:PrincipalOrgPaths_2019-11-20</guid>
      </item>
      <item>
         <title>Integration with AWS Config rules </title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>You can use AWS Config API operations to manage AWS Config rules across all AWS accounts
                    in your organization.</description>
         <pubDate>Mon, 8 Jul 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Integration_with_AWS_Config_rules__2019-07-08</guid>
      </item>
      <item>
         <title>New service for trusted access</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>Service Quotas added as a service that can work with the accounts in your
                    organization.</description>
         <pubDate>Mon, 24 Jun 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#New_service_for_trusted_access_2019-06-24</guid>
      </item>
      <item>
         <title>Integration with AWS Control Tower</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>AWS Control Tower added as a service that can work with the accounts in your
                    organization.</description>
         <pubDate>Mon, 24 Jun 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Integration_with_AWS_Control_Tower_2019-06-24</guid>
      </item>
      <item>
         <title>Integration with AWS Identity and Access Management</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html</link>
         <description>IAM provides service last accessed data for your organization's entities
                    (the organization root, OUs, and accounts). You can use this data to restrict
                    access to only the AWS services that you need.</description>
         <pubDate>Thu, 20 Jun 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Integration_with_AWS_Identity_and_Access_Management_2019-06-20</guid>
      </item>
      <item>
         <title>Tagging accounts</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html</link>
         <description>You can tag and untag accounts in your organization and view tags on an
                    account in your organization.</description>
         <pubDate>Thu, 6 Jun 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Tagging_accounts_2019-06-06</guid>
      </item>
      <item>
         <title>Resources, conditions, and the NotAction element in service
                    control policies (SCPs)</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html</link>
         <description>You can now specify resources, conditions, and the &lt;a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_notaction.html"&gt;&lt;code class="code"&gt;NotAction&lt;/code&gt;&lt;/a&gt; element in SCPs to deny access across
                    accounts in your organization or organizational unit (OU). </description>
         <pubDate>Mon, 25 Mar 2019 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Resources,_conditions,_and_the_NotAction_element_in_service
____________________control_policies_(SCPs)_2019-03-25</guid>
      </item>
      <item>
         <title>New services for trusted access</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>AWS License Manager and Service Catalog added as services that can work with the accounts in your
                    organization. </description>
         <pubDate>Fri, 21 Dec 2018 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#New_services_for_trusted_access_2018-12-21</guid>
      </item>
      <item>
         <title>New services for trusted access</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>AWS CloudTrail and AWS RAM added as services that can work with the accounts in your
                    organization.</description>
         <pubDate>Tue, 4 Dec 2018 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#New_services_for_trusted_access_2018-12-04</guid>
      </item>
      <item>
         <title>New service for trusted access</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>AWS Directory Service added as a service that can work with the accounts in your
                    organization.</description>
         <pubDate>Tue, 25 Sep 2018 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#New_service_for_trusted_access_2018-09-25</guid>
      </item>
      <item>
         <title>Email address verification</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_create.html#about-email-verification</link>
         <description>You must verify that you own the email address that is associated with the
                    management account before you can invite existing accounts to your
                    organization.</description>
         <pubDate>Thu, 20 Sep 2018 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Email_address_verification_2018-09-20</guid>
      </item>
      <item>
         <title>CreateAccount notifications</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html#Log-entries-create-account</link>
         <description>&lt;code class="code"&gt;CreateAccount&lt;/code&gt; notifications are published to the management
                    account's CloudTrail logs.</description>
         <pubDate>Thu, 28 Jun 2018 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#CreateAccount_notifications_2018-06-28</guid>
      </item>
      <item>
         <title>New service for trusted access</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>AWS Artifact added as a service that can work with the accounts in your
                    organization.</description>
         <pubDate>Wed, 20 Jun 2018 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#New_service_for_trusted_access_2018-06-20</guid>
      </item>
      <item>
         <title>New services for trusted access</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>AWS Config and AWS Firewall Manager added as services that can work with the accounts in your
                    organization.</description>
         <pubDate>Wed, 18 Apr 2018 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#New_services_for_trusted_access_2018-04-18</guid>
      </item>
      <item>
         <title>Trusted service access</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html</link>
         <description>You can now enable or disable access for select AWS services to work in the
                    accounts in your organization. IAM Identity Center is the initial supported trusted
                    service.</description>
         <pubDate>Thu, 29 Mar 2018 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Trusted_service_access_2018-03-29</guid>
      </item>
      <item>
         <title>Account removal is now self-service</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#orgs_manage_accounts_remove-from-managment-account</link>
         <description>You can now remove accounts that were created from within AWS Organizations without
                    contacting AWS Support.</description>
         <pubDate>Tue, 19 Dec 2017 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Account_removal_is_now_self-service_2017-12-19</guid>
      </item>
      <item>
         <title>Added support for new service AWS IAM Identity Center (successor to AWS Single Sign-On)</title>
         <link>https://docs.aws.amazon.com/singlesignon/latest/userguide/</link>
         <description>AWS Organizations now supports integration with AWS IAM Identity Center (successor to AWS Single Sign-On) (IAM Identity Center).</description>
         <pubDate>Thu, 7 Dec 2017 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Added_support_for_new_service_AWS_IAM_Identity_Center_(successor_to_AWS_Single_Sign-On)_2017-12-07</guid>
      </item>
      <item>
         <title>AWS added a service-linked role to all organization accounts</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs</link>
         <description>A service-linked role named &lt;code class="code"&gt;AWSServiceRoleForOrganizations&lt;/code&gt; is added to all
                    accounts in an organization to enable integration between AWS Organizations and other
                    AWS services.</description>
         <pubDate>Wed, 11 Oct 2017 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#AWS_added_a_service-linked_role_to_all_organization_accounts_2017-10-11</guid>
      </item>
      <item>
         <title>You can now remove created accounts</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/document-history.html</link>
         <description>Customers can now remove created accounts from their organization, with help
                    from AWS Support.</description>
         <pubDate>Thu, 15 Jun 2017 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#You_can_now_remove_created_accounts_2017-06-15</guid>
      </item>
      <item>
         <title>Service launch</title>
         <link>https://docs.aws.amazon.com/organizations/latest/userguide/</link>
         <description>Initial version of the AWS Organizations documentation that accompanied the launch of
                    the new service.</description>
         <pubDate>Fri, 17 Feb 2017 19:00:00 GMT</pubDate>
         <guid isPermaLink="false">https://docs.aws.amazon.com/organizations/latest/userguide/#Service_launch_2017-02-17</guid>
      </item>
   </channel>
</rss>**

Run configu
