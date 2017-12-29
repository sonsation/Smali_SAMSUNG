.class public Lcom/android/settings/accounts/AccountSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountSettings$1;,
        Lcom/android/settings/accounts/AccountSettings$2;,
        Lcom/android/settings/accounts/AccountSettings$AccountPreference;,
        Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings/accounts/AccountSettings$HelpClickListener;,
        Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/settings/accounts/AccountSettings$ProfileData;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mProfileNotAvailablePreference:Landroid/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accounts/AccountSettings;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mOptionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/accounts/AccountSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 865
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountSettings$1;-><init>()V

    .line 864
    sput-object v0, Lcom/android/settings/accounts/AccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;)V

    .line 114
    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 919
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountSettings$2;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 94
    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/android/settingslib/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 605
    iget v2, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v2, :cond_0

    .line 607
    return v3

    .line 609
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 611
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 612
    const-string/jumbo v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No sync authorities for account type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v5

    .line 615
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v2, :cond_3

    .line 616
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 617
    return v3

    .line 615
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    :cond_3
    return v5
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 466
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 464
    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "helper"    # Lcom/android/settingslib/accounts/AuthenticatorHelper;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual/range {p1 .. p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v13

    .line 525
    .local v13, "accountTypes":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    array-length v2, v13

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 527
    .local v12, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v2, v13

    if-ge v15, v2, :cond_9

    .line 528
    const/16 v16, 0x1

    .line 529
    .local v16, "showAccount":Z
    aget-object v11, v13, v15

    .line 531
    .local v11, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/settings/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 534
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 535
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 538
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, "titleResPackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v7

    .line 541
    .local v7, "titleResId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 543
    .local v14, "accounts":[Landroid/accounts/Account;
    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 544
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v17, 0x0

    .line 547
    .local v17, "skipToAccount":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v20

    .line 548
    .local v20, "ssoAccount":Landroid/accounts/Account;
    if-eqz v20, :cond_3

    .line 549
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 553
    .local v18, "snsAccountType":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v19

    .line 554
    .local v19, "snsAccounts":[Landroid/accounts/Account;
    move-object/from16 v0, v19

    array-length v2, v0

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 555
    :cond_2
    const/16 v17, 0x0

    .line 560
    .end local v18    # "snsAccountType":Ljava/lang/String;
    .end local v19    # "snsAccounts":[Landroid/accounts/Account;
    :cond_3
    const-string/jumbo v2, "com.samsung.android.coreapps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 561
    const/16 v16, 0x0

    .line 562
    const-string/jumbo v2, "AccountSettings"

    const-string/jumbo v3, "Hide Easysignup account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_4
    if-eqz v16, :cond_5

    .line 566
    if-eqz v17, :cond_8

    .line 567
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v9, "fragmentArguments":Landroid/os/Bundle;
    const-string/jumbo v2, "account"

    .line 569
    const/4 v3, 0x0

    aget-object v3, v14, v3

    .line 568
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 570
    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 573
    const-class v3, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    .line 572
    invoke-direct/range {v2 .. v10}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 544
    .end local v17    # "skipToAccount":Z
    .end local v20    # "ssoAccount":Landroid/accounts/Account;
    :cond_6
    const/16 v17, 0x1

    .restart local v17    # "skipToAccount":Z
    goto/16 :goto_2

    .line 543
    .end local v17    # "skipToAccount":Z
    :cond_7
    const/16 v17, 0x0

    .restart local v17    # "skipToAccount":Z
    goto/16 :goto_2

    .line 577
    .restart local v20    # "ssoAccount":Landroid/accounts/Account;
    :cond_8
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 578
    .restart local v9    # "fragmentArguments":Landroid/os/Bundle;
    const-string/jumbo v2, "account_type"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string/jumbo v2, "account_label"

    .line 580
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 583
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .line 584
    const-class v3, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v3, p0

    .line 583
    invoke-direct/range {v2 .. v10}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 594
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "titleResPackageName":Ljava/lang/String;
    .end local v7    # "titleResId":I
    .end local v9    # "fragmentArguments":Landroid/os/Bundle;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v14    # "accounts":[Landroid/accounts/Account;
    .end local v16    # "showAccount":Z
    .end local v17    # "skipToAccount":Z
    .end local v20    # "ssoAccount":Landroid/accounts/Account;
    :cond_9
    new-instance v2, Lcom/android/settings/accounts/AccountSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/accounts/AccountSettings$4;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 600
    return-object v12
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v4, 0x0

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 456
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 457
    .local v0, "adminApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 458
    return-object v4

    .line 460
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 461
    .local v1, "appLabel":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x7f0b1d0e

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 473
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 474
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 475
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 476
    .local v0, "authenticatorHelper":Lcom/android/settingslib/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 474
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "authenticatorHelper":Lcom/android/settingslib/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Lcom/android/settings/DimmableIconPreference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    new-instance v0, Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DimmableIconPreference;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, "preference":Lcom/android/settings/DimmableIconPreference;
    const v1, 0x7f0b1a9b

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setTitle(I)V

    .line 424
    const v1, 0x7f02062f

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setIcon(I)V

    .line 425
    const v1, 0x7f040357

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setLayoutResource(I)V

    .line 426
    invoke-virtual {v0, p0}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 427
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/DimmableIconPreference;->setOrder(I)V

    .line 428
    return-object v0
.end method

.method private newManagedProfileSettings()Landroid/preference/Preference;
    .locals 4

    .prologue
    .line 443
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 444
    .local v1, "preference":Landroid/preference/Preference;
    const v2, 0x7f0b1ea3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0205ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 446
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 447
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 448
    const v2, 0x7f040357

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 449
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 450
    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 451
    return-object v1
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0b1a9f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 434
    const v1, 0x7f020634

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 435
    const v1, 0x7f040357

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 436
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 437
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 438
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 483
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 484
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 485
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 486
    .local v0, "authenticatorHelper":Lcom/android/settingslib/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 484
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "authenticatorHelper":Lcom/android/settingslib/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V
    .locals 6
    .param p1, "profileData"    # Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .prologue
    const/4 v5, 0x0

    .line 493
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 494
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 496
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 495
    invoke-direct {p0, v3, v4}, Lcom/android/settings/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 497
    .local v2, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 498
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 499
    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_0
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 513
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 514
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 516
    :cond_2
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 517
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 492
    :cond_3
    return-void

    .line 506
    :cond_4
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 507
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f020139

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 508
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    .line 510
    const v4, 0x7f0b1a9c

    .line 509
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 511
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 8
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 379
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 380
    .local v1, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 381
    if-eqz p2, :cond_3

    .line 382
    new-instance v3, Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 383
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0403e0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 385
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0b0120

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 386
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accounts/AccountSettings;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "workGroupSummary":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings/AccessiblePreferenceCategory;

    .line 389
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    const v5, 0x7f0b1647

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/accounts/AccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 388
    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    .line 391
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->newManagedProfileSettings()Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/preference/Preference;

    .line 397
    .end local v2    # "workGroupSummary":Ljava/lang/String;
    :goto_0
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 401
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    new-instance v3, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 403
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 402
    invoke-direct {v3, v0, v4, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 404
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Lcom/android/settings/DimmableIconPreference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    .line 406
    const-string/jumbo v3, "no_modify_accounts"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 405
    invoke-static {v0, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v3, v7}, Lcom/android/settings/DimmableIconPreference;->setEnabled(Z)V

    .line 413
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 416
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v3

    .line 418
    const-class v4, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-virtual {v3, v4, v6, v6}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 377
    return-void

    .line 393
    :cond_2
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0b011f

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 394
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    check-cast v3, Lcom/android/settings/AccessiblePreferenceCategory;

    .line 395
    const v4, 0x7f0b1648

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_3
    iput-object p3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    goto :goto_1

    .line 409
    :cond_4
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    .line 410
    const-string/jumbo v4, "no_modify_accounts"

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 409
    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DimmableIconPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    goto :goto_2

    .line 413
    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 414
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x8

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 262
    .local v0, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 260
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string/jumbo v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 172
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 161
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 166
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 168
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 158
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 180
    const v0, 0x7f140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 182
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 179
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 187
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Account"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 19
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 273
    .local v15, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v15, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 275
    .local v17, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 282
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v7, "bundle_extra":Landroid/os/Bundle;
    const-string/jumbo v2, "extra_fragment_mode"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 285
    const-string/jumbo v2, "authorities"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    const-string/jumbo v4, "com.android.settings.accounts.ChooseAccountActivity"

    .line 287
    const v5, 0x7f0b1a9b

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    .line 286
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/accounts/AccountSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 288
    const/4 v2, 0x1

    return v2

    .line 291
    .end local v7    # "bundle_extra":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 292
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 293
    .local v18, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 294
    new-instance v3, Lcom/android/settings/accounts/AccountSettings$3;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/settings/accounts/AccountSettings$3;-><init>(Lcom/android/settings/accounts/AccountSettings;I)V

    .line 293
    move/from16 v0, v18

    invoke-static {v2, v0, v3}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 301
    const/4 v2, 0x1

    return v2

    .line 303
    .end local v18    # "userId":I
    :cond_1
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;->managedProfilePreference:Landroid/preference/Preference;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 304
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v10, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.USER"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsActivity;

    .line 307
    const-class v2, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 308
    const v11, 0x7f0b1ea3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 306
    invoke-virtual/range {v8 .. v14}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 309
    const/4 v2, 0x1

    return v2

    .line 273
    .end local v10    # "arguments":Landroid/os/Bundle;
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 312
    .end local v17    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f110a02

    const v9, 0x7f110a01

    const v8, 0x7f110023

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 193
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 194
    .local v0, "currentProfile":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 196
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 195
    invoke-static {v4}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 197
    .local v1, "enableAutoSync":Ljava/lang/Boolean;
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 199
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    invoke-interface {v2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    new-instance v4, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 202
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 209
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 210
    const v4, 0x7f110a03

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    .end local v1    # "enableAutoSync":Ljava/lang/Boolean;
    .end local v2    # "item":Landroid/view/MenuItem;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_4

    .line 231
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    .line 233
    new-instance v5, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/accounts/AccountSettings$HelpClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$HelpClickListener;)V

    .line 231
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 192
    :goto_2
    return-void

    .line 205
    .restart local v1    # "enableAutoSync":Ljava/lang/Boolean;
    .restart local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0b1b03

    :goto_3
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 206
    new-instance v4, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;Ljava/lang/Boolean;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 205
    :cond_1
    const v4, 0x7f0b1b01

    goto :goto_3

    .line 211
    .end local v1    # "enableAutoSync":Ljava/lang/Boolean;
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 213
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v4, v4, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 215
    .local v3, "managedProfile":Landroid/os/UserHandle;
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    .line 217
    new-instance v5, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    .line 215
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 219
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 218
    invoke-static {v5}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v5

    .line 215
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 220
    const v4, 0x7f110a03

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v4

    .line 222
    new-instance v5, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    .line 220
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 224
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 223
    invoke-static {v5}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v5

    .line 220
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 225
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 227
    .end local v3    # "managedProfile":Landroid/os/UserHandle;
    :cond_3
    const-string/jumbo v4, "AccountSettings"

    const-string/jumbo v5, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 236
    :cond_4
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 241
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->cleanUpPreferences()V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->updateUi()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 245
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Account"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method updateUi()V
    .locals 9

    .prologue
    .line 317
    const v7, 0x7f08000d

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 319
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v7}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v7}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 326
    :cond_0
    const-string/jumbo v7, "account"

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 327
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 329
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 330
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v2}, Lcom/android/settings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 366
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 367
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_b

    .line 368
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 369
    .local v3, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 370
    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v3    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_3
    const-string/jumbo v7, "AccountSettings"

    const-string/jumbo v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->finish()V

    .line 323
    return-void

    .line 332
    .restart local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 334
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 335
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_6

    .line 336
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 337
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    add-int/lit8 v1, v1, -0x1

    .line 334
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 341
    :cond_6
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 342
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 343
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 349
    :cond_7
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_9

    .line 350
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 351
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 352
    add-int/lit8 v1, v1, -0x1

    .line 349
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 356
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 357
    .restart local v5    # "profilesCount":I
    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    const/4 v0, 0x1

    .line 358
    .local v0, "addCategory":Z
    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v5, :cond_1

    .line 359
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/android/settings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 357
    .end local v0    # "addCategory":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "addCategory":Z
    goto :goto_4

    .line 315
    .end local v0    # "addCategory":Z
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    return-void
.end method
