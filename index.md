## Welcome to my PowerShell collection

I'm John West, and I love automating things with PowerShell. I've been working as a Systems Administrator and Systems Engineer for a little over 12 years, and I've spent about 11 of those years figuring out how to automate large parts of my job, starting with vbscript and HTAs, and moving to Python and PowerShell.

Since I've worked in mostly Windows environments, PowerShell has been my primary focus.

The majority of my PowerShell is in private repositories because I need to make sure that there is no private information. Once that's done, I'll add a link to the Module/Script below. I've prefixed all of the module names, and a few of the commands with my initials "jw" to avoid conflicts.

### Modules

- jw.toolkit
-- General collection of commands that didn't quite fit into one of the other specific modules. All of my other modules rely on this module in some way.
- jw.ad
-- General Active Directory management
- jw.exchange
-- Exchange server, both on-premises and Exchange Online. Should work with Exchange 2010 and newer.
- jw.vmware
-- VMware vCenter server.
- jw.hyperv
-- SCVMM and standalone Hyper-V server.
- jw.skype
-- Basic management for on-premises Skype for Business Server and Lync Server.
- jw.LogFileArchive
-- Used to move logs to an archive location, and eventually delete them, based on some predefined criteria.
- jw.MSOnline
-- Originally created to make it easy to connect to Microsoft Online Services/Office 365 (Connect-MsolSvc) and forcing a sync for Azure AD Connect (Sync-AzureAD), but I added some basic user, group, and license management.
- jw.net
-- Basic network and DNS management and info gathering.
- jw.EmployeeTerm
-- Process employee terminations. This includes a lot of functionality that was specific to the environment at the time, which may not be relevant in other environments.
- jw.BackupTapes
-- I was managing a lot of backup tapes, and had no way of tracking their physical location, so I setup a SQLite database and some functions for importing .csv files, which were generated from a smartphone app.
- jw.helper
-- I never published this to a repository, because I used it for functions that were specific to only me, or for testing things before I added them to other modules.
- jw.config
-- I wanted a way to automate setting up my user profile and certain apps on different computers and servers. This will pull from one or more config files, which can be synced with various applications like OneDrive or Google Drive.

### Scripts
- Stand-alone scripts that don't belong to any modules. Usually these are created for a user ticket, or provided to another engineer looking for a PowerShell solution to a specific issue they were working on.