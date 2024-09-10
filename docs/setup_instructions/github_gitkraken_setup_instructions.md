---
title: Setting up Git and GitKraken
---

**Table of contents**

* TOC goes here
{:toc}

## Setting up your computer

Before setting up Git and GitKraken, you'll need to follow these steps to install certain softwares on your computer: [Setup for macOS users](./mac_installation_instructions.html) or [Setup for Windows/PC users](./windows_installation_instructions.html).


## Creating a GitHub account

Navigate in the browser to <https://github.com>, and click "Sign Up" in the top-right corner.

<img src="screenshots/github/github_landing.png" alt="GitHub Sign In or Sign Up Page" width="500">


GitHub will then lead you through a series of (outer space-themed!) setup prompts, beginning with your email, password, and username, as shown here for example:

<img src="screenshots/github/github_email_password_uname.png" alt="GitHub Email and Username Prompt" width="500">


After you have filled the required information, GitHub will send the email you provided a one-time code for verification, which you can enter on the next screen.

<img src="screenshots/github/github_launchcode.png" alt="GitHub Launch Code Prompt" width="500">

Next, GitHub will prompt you to fill out certain **Optional** personalization settings.
You can skip this if you prefer (yellow arrow below), or you can follow the prompts accordingly.

<img src="screenshots/github/github_personalization.png" alt="GitHub Personalization Page" width="500">


Finally, you'll zoom through outer space and arrive at your new GitHub home account page:


<img src="screenshots/github/github_home.png" alt="GitHub Home Page" width="500">



## Enabling Two-Factor Authentication (2FA) on GitHub

> Please do NOT skip this step! It is a necessary security setting.

From the top-right corner Account dropdown icon (looks like weirdly arranged squares), click on "Settings."

<img src="screenshots/github/github_account_dropdown.png" alt="GitHub Settings Dropdown" width="500">



From the left-hand menu, select "Password and Authentication."
Note, you can also take this moment to fill in your GitHub Public Profile, including your public-facing name, picture, email, bio, any anything else you like.

<img src="screenshots/github/github_settings_leftpane.png" alt="GitHub Settings Left Pane" width="500">

Click the large green button to "Enable two-factor authentication":

<img src="screenshots/github/2fa_enable.png" alt="GitHub Enable 2FA Dropdown" width="500">

You will then see several options for what _type_ of 2FA you can set up.
_For the best security, we **strongly** recommend that you click "Set up using an app."_
_The only reason not to choose this option is if you do not have a smartphone._
This action requires that you install a separate app on your smart phone to generate authentication codes if you don't already have one.
There are many authenticator app options, including the ones listed by GitHub (1Password, Authy, etc.) or others like Google Authenticator.
Take a moment to either download a preferred 2FA app on your smartphone, or open a 2FA app if you already have one on your smartphone.

Click "Continue" to proceed with setup.

<img src="screenshots/github/2fa_landing.png" alt="GitHub 2FA Setup Page 1" width="500">

-------


**2FA with an Authenticator App**

After clicking "Continue,", you will see a QR code to scan _into your smartphone app_ (or click "enter this text code" if you prefer not to use the QR code with camera).

<img src="screenshots/github/2fa_qr.png" alt="GitHub 2FA Setup for Authenticator App" width="500">


Once your QR code is scanned into the app, the app will provide you with a 6-digit code to enter back into github.com.


**2FA with SMS**

After clicking "Continue," you should enter your cell phone number and click "Send authentication code."

Shortly after, you will receive a text message with a 6-digit code which you should enter into the field "Enter the code sent to your phone."

----

Github.com will now show you a list of **recovery codes** that you can use in case you lose access to your phone or authenticator app.
**Save these codes in a secure location, and do NOT share them, just like passwords!**
(This is why the screenshot below blacks out the recovery codes - they should not be shared!)
You can export these code by clicking the "Download" button.

<img src="screenshots/github/2fa_recovery_codes.png" alt="GitHub 2FA Recovery Codes" width="500">

Once you have saved your recovery codes to a secure location, click "I have saved my recovery codes."

Celebrate your new 2FA setup!

<img src="screenshots/github/celebrate.png" alt="Celebrate your Github 2FA" width="500">




## Setting up GitKraken


Now that you have set up your GitHub account, you are ready to configure the GitKraken application you previously downloaded onto your computer.

Open the installed GitKraken application.
Note that if this is the first time you are opening GitKraken on a Mac, you may see this message; click "Open" if you see this message.

<img src="screenshots/github/gitkraken_mac_warning.png" alt="macOS warning about GitKraken" width="200">

When GitKraken first opens, it will prompt you to either open a repository or sign in.
GitKraken's parent company Axosoft has its own account system to manage use of the advanced features of its software.
Luckily, it is easy enough to use your GitHub account to login, which will save you from having to remember a separate login, so we recommend that option.

Click "Sign In":

<img src="screenshots/github/gitkraken_signin.png" alt="GitKraken Sign In" width="500">

GitKraken will then present different options for signing in.
Click the "GitHub" icon to proceed to proceed with the authorization process that will link your GitHub account to your GitKraken application.

<img src="screenshots/github/gitkraken_signin_options.png" alt="GitKraken Sign up with GitHub" width="500">

GitKraken will then open a browser window to link your GitHub account.
If you are not already signed into GitHub, you first will be prompted to log in.

Once you are logged in, you should grant GitKraken permission to link with your GitHub account.
Click "Authorize Axosoft":

<img src="screenshots/github/gitkraken_authorize_axosoft.png" alt="GitKraken Axosoft Authorization " width="500">


You will be redirected to a website confirming that you successfully linked GitHub and GitKraken.

<img src="screenshots/github/gitkraken_success.png" alt="GitKraken GitHub Successful connection" width="500">

Back in GitKraken, you will now be prompted for your name and email address used for Git commits.
Fill out the information as follows, and then click "Use These for Git Commits".

- `Author Name`: Enter the preferred name you wish to be publicly associated with the actions you'll perform on GitHub.
- `Author Email`: Enter the preferred email you wish to be publicly associated with the actions you'll perform on GitHub.
This email does not have to be the same as the one you used to sign up for GitHub.


<img src="screenshots/github/gitkraken_confirm_git_details.png" alt="GitKraken Commit Details" width="500">

Finally, GitKraken will present this screen of options, which means you're all set up!
You do not need to select any options here - we will do that together in the workshop.
You can now safely close GitKraken.

<img src="screenshots/github/gitkraken_landing.png" alt="GitKraken Getting Started Landing Page" width="500">
