#!/bin/sh

killall -9 akd apsd pkd findmydeviced fmfd fmflocatord identityservicesd seld keybagd
rm -f /var/Keychains/keychain-2.db*
rm -f /var/root/Library/Preferences/com.apple.coreservices.appleidauthenticationinfo.plist
rm -f /var/mobile/Library/AccountNotifications/*.sqlite*
rm -f /var/mobile/Library/Accounts/*.sqlite*
rm -f /var/mobile/Library/AddressBook/*.sqlite*
# delete ccertain cache files only
find /var/mobile/Library/Caches -name "Cache.db*"  -exec rm {} \;
rm -rf /var/mobile/Library/Caches/CloudKit/*
rm -f /var/mobile/Library/Caches/FamilyCircle/*
rm -rf /var/mobile/Library/Caches/com.apple.accountsd/*
rm -rf /var/mobile/Library/Caches/com.apple.akd/*
rm -rf /var/mobile/Library/Caches/com.apple.dataaccess.dataaccessd/*
rm -rf /var/mobile/Library/Caches/com.apple.imfoundation.IMRemoteURLConnectionAgent/*
rm -rf /var/mobile/Library/Caches/com.apple.passd/fsCachedData/*
rm -rf /var/mobile/Library/Caches/com.apple.Preferences/*
rm -rf /var/mobile/Library/Caches/com.apple.purplebuddy/*
rm -rf /var/mobile/Library/Caches/com.apple*
#rm -rf /var/mobile/Library/Caches/PassKit/*
rm -f /var/mobile/Library/ApplePushService/aps.*
rm -rf /var/mobile/Library/DataAccess/*
rm -f /var/mobile/Library/Health/*.sqlite*
rm -f /var/mobile/Library/IdentityServices/ids*
rm -f /var/mobile/Library/ApplePushService/aps.*
rm -rf /var/mobile/Library/com.apple.companionappd/*
rm -rf /var/mobile/Library/com.apple.nsurlsessiond/*
rm -rf /var/mobile/Library/Health/*
rm -rf /var/mobile/Library/locationd/*
rm -rf /var/mobile/Library/Mail/*
rm -rf /var/mobile/Library/Mobile\ Documents/*
rm -rf /var/mobile/Library/MusicLibrary/*
rm -rf /var/mobile/Library/Safari/*
rm -f /var/mobile/Library/Preferences/com.apple.AOS*
rm -f /var/mobile/Library/Preferences/com.apple.apsd.plist
rm -f /var/mobile/Library/Preferences/com.apple.accounts*
rm -f /var/mobile/Library/Preferences/com.apple.assistant*
rm -f /var/mobile/Library/Preferences/com.apple.coreduet*
rm -f /var/mobile/Library/Preferences/com.apple.dataaccess*.plist
rm -f /var/mobile/Library/Preferences/com.apple.gamed*.plist
rm -f /var/mobile/Library/Preferences/com.apple.identityservices*
rm -f /var/mobile/Library/Preferences/com.apple.imservice*
rm -f /var/mobile/Library/Preferences/com.apple.ids.*
rm -f /var/mobile/Library/Preferences/com.apple.icloud.*
rm -f /var/mobile/Library/Preferences/com.apple.lasd.plist
rm -f /var/mobile/Library/Preferences/com.apple.mobile.*
rm -f /var/mobile/Library/Preferences/com.apple.seld.*
rm -f /var/mobile/Library/Preferences/ProtectedCloudKeySyncing.plist
rm -f /var/mobile/Library/Preferences/kbd.plist
rm -f /var/mobile/Library/SyncedPreferences/com.apple.cloudrecents.*
rm -f /var/mobile/Library/SyncedPreferences/com.apple.cmfsyncagent.plist
rm -f /var/mobile/Library/SyncedPreferences/com.apple.sbd*
rm -f /var/mobile/Library/SyncedPreferences/com.apple.security.cloudkeychainproxy3.plist
rm -f /var/mobile/Library/SyncedPreferences/com.apple.syncedpreferences.plist
rm -rf /var/log/*
rm -rf /var/logs/*
rm -f /var/preferences/SystemConfiguration/com.apple.accounts.exists.plist
rm -f /var/preferences/com.apple.security.cloudkeychainproxy3.keysToRegister.plist
rm -rf /var/root/Library/Lockdown
killall -9 akd apsd pkd findmydeviced fmfd fmflocatord identityservicesd seld keybagd backboardd SpringBoard
reboot
