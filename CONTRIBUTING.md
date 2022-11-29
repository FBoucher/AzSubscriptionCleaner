# Contributing

We appreciate contributions of any kind and acknowledge them on our [README][readme].  By participating 
in this project, you agree to abide by our [code of conduct](CODE_OF_CONDUCT.md).

### Any enhancements/bugs/etc you see?

Add an issue.  We'll review it, add labels and reply within a few days.

Thank you for this work, much appreciated!

I have a use case for this script but I'm struggling with the tag part. My use case is as follows:
A single subscription that is used for dev work however after three months any resource in the subscription older than three months should be deleted to minimize consumption cost. So ideally I would like to automatically tag any resource a user creates in this subscription with the expireOn tag. Could I use Azure Policy for this or instead a script that runs daily and any newly created resources gets assigned the tag expireOn if not already. Then your script runs to check for resources with the tag but only deletes them if they are older than three months.

Hope this makes sense and thanks again!

Cheers
Yves

### See an issue you'd like to work on?

Comment on the issue that you'd like to work on it and we'll add the `claimed` label.  If you see the `claimed` label already on the issue you might want to ask the contributor if they'd like some help.

### Documentation/etc need updating?

Go right ahead!  Just submit a pull request when you're done.

## Pull Requests

We love pull requests from everyone. 

Fork, then clone the repo:

    git clone git@github.com:your-username/AzSubscriptionCleaner.git

Push to your fork and [submit a pull request](https://github.com/fboucher/Not-a-Dog-Workshop/compare/) against the `dev` branch.

At this point you're waiting on us. We like to at least comment on pull requests within three days (and, typically, one day). We may suggest some changes or improvements or alternatives.

Some things that will increase the chance that your pull request is accepted:

* Update [README][readme] with any needed changes
* Write a [good commit message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html).

[readme]: README.md
