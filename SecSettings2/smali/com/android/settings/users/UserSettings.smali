.class public Lcom/android/settings/users/UserSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserSettings$1;,
        Lcom/android/settings/users/UserSettings$2;,
        Lcom/android/settings/users/UserSettings$3;,
        Lcom/android/settings/users/UserSettings$4;,
        Lcom/android/settings/users/UserSettings$SummaryProvider;,
        Lcom/android/settings/users/UserSettings$UserCapabilities;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAddUser:Lcom/android/settings/DimmableIconPreference;

.field private mAddUserWhenLocked:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

.field private mEmergencyInfoPreference:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mLockScreenSettings:Landroid/preference/PreferenceGroup;

.field private mMePreference:Lcom/android/settings/users/UserPreference;

.field private mMum:Lcom/samsung/android/knox/multiuser/MultiUserManager;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserYouCategory:Landroid/preference/PreferenceGroup;


# direct methods
.method static synthetic -get0(Lcom/android/settings/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/users/UserSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/users/UserSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createRestrictedProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p1, "userType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p1, "userType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/users/UserSettings;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->removeDialog(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1264
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$3;-><init>()V

    .line 1263
    sput-object v0, Lcom/android/settings/users/UserSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1273
    new-instance v0, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$4;-><init>()V

    .line 1272
    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMum:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 162
    new-instance v0, Lcom/android/settings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/settings/users/EditUserInfoController;-><init>()V

    .line 161
    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 167
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    return-void
.end method

.method private addUserNow(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    const/4 v2, 0x1

    .line 732
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMum:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    return-void

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 748
    if-ne p1, v2, :cond_1

    const v0, 0x7f0b195c

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    .line 751
    new-instance v0, Lcom/android/settings/users/UserSettings$14;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$14;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$14;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 730
    return-void

    .line 749
    :cond_1
    const v0, 0x7f0b195d

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createRestrictedProfile()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 458
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V

    .line 459
    return-object v0
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 5

    .prologue
    .line 463
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 465
    .local v1, "newUserInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->assignDefaultPhoto(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-object v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "UserSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not able to assign default photo to user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v2, 0x0

    return-object v2
.end method

.method private emergencyInfoActivityPresent()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 681
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.EDIT_EMERGENGY_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.emergency"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 682
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 683
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    :cond_0
    return v4

    .line 686
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->encircle(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 822
    return-void

    .line 824
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 819
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const v4, 0x7f0b1946

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 385
    .local v1, "myUserId":I
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 388
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    :cond_1
    return-void
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1051
    const/16 v0, -0x2710

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1050
    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getEncircledDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "user_id"    # I

    .prologue
    .line 1043
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1042
    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1044
    .local v0, "defaultIcon":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private getMaxRealUsers()I
    .locals 6

    .prologue
    .line 1006
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 1007
    .local v1, "maxUsersAndGuest":I
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 1009
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 1010
    .local v0, "managedProfiles":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1011
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1012
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    sub-int v5, v1, v0

    return v5
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .prologue
    .line 393
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x0

    .line 1102
    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string/jumbo v1, "minimum_quality"

    .line 400
    const/high16 v2, 0x10000

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 397
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p1, "missingIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/settings/users/UserSettings$15;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$15;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    .line 1036
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1019
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$15;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1018
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/16 v1, -0x2710

    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 360
    return-void

    .line 363
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 355
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMum:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit v1

    .line 417
    return-void

    .line 426
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 428
    :pswitch_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 431
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 434
    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 475
    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 476
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 477
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 479
    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 480
    const v3, 0x7f0b007b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 478
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 481
    return-void

    .line 483
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 484
    .local v7, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_2

    .line 485
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 486
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    const-string/jumbo v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 489
    const-class v1, Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 490
    const v3, 0x7f0b19c6

    const/4 v4, 0x0

    .line 491
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 488
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 473
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 494
    invoke-static {p0}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_1

    .line 496
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 497
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 499
    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 502
    iget-object v4, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 501
    const/4 v3, -0x1

    .line 503
    const/4 v5, 0x0

    .line 504
    const/4 v6, 0x0

    .line 498
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 444
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMum:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    return-void

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit v1

    .line 442
    return-void

    .line 450
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 509
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 511
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 508
    :goto_0
    return-void

    .line 514
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 4

    .prologue
    .line 714
    invoke-static {}, Lcom/android/settings/Utils;->isOnCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0cbe

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 716
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v1

    if-nez v1, :cond_1

    .line 719
    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Cannot remove current user when switching is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 723
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 724
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "UserSettings"

    const-string/jumbo v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 690
    invoke-static {}, Lcom/android/settings/Utils;->isOnCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0cbe

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 689
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMum:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 696
    return-void

    .line 698
    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 699
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    goto :goto_0

    .line 701
    :cond_2
    new-instance v0, Lcom/android/settings/users/UserSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$13;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 1058
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1059
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1060
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1057
    :cond_0
    return-void
.end method

.method private setWifiApMultiUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 807
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    .line 808
    .local v1, "state":Z
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_ap_saved_state"

    invoke-static {v2, v3, v4, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 809
    :goto_0
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 810
    invoke-virtual {v0, v5, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 805
    :goto_1
    return-void

    .line 808
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {v0, v5, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1
.end method

.method private switchUserNow(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 781
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 782
    .local v2, "oldUserId":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 783
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    .line 784
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 785
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_ap_saved_state"

    invoke-static {v4, v5, v7, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 791
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isOnCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0cbd

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_1
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 801
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 802
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->setWifiApMultiUser(I)V

    .line 780
    :cond_1
    return-void

    .line 787
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_ap_saved_state"

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 794
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 796
    :catch_0
    move-exception v3

    .local v3, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateUserList()V
    .locals 24

    .prologue
    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 829
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v22

    .line 830
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 832
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v4, "user_add"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/users/UserSettings;->removePreference(Ljava/lang/String;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserYouCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserYouCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 838
    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v23

    .line 839
    .local v23, "voiceCapable":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v12, "missingIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v21, "userPreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/users/UserPreference;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 844
    .local v17, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 850
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v4, :cond_6

    .line 852
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_1

    .line 864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v4, :cond_8

    .line 865
    if-nez v23, :cond_7

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v16

    .line 866
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v4, :cond_a

    .line 867
    if-nez v23, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    const/4 v15, 0x0

    .line 868
    .local v15, "showDelete":Z
    :goto_2
    new-instance v2, Lcom/android/settings/users/UserPreference;

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 869
    if-eqz v16, :cond_b

    move-object/from16 v6, p0

    .line 870
    :goto_3
    if-eqz v15, :cond_c

    move-object/from16 v7, p0

    .line 868
    :goto_4
    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 871
    .local v2, "pref":Lcom/android/settings/users/UserPreference;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 873
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 874
    const v4, 0x7f0b1945

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 876
    :cond_4
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 877
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    .line 879
    .end local v15    # "showDelete":Z
    :goto_5
    if-eqz v2, :cond_1

    .line 882
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 883
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 884
    const v4, 0x7f0b1943

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 888
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 889
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    .line 893
    :cond_5
    :goto_7
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f

    .line 896
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 851
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    goto :goto_5

    .line 865
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_7
    const/16 v16, 0x1

    .local v16, "showSettings":Z
    goto/16 :goto_1

    .line 864
    .end local v16    # "showSettings":Z
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "showSettings":Z
    goto/16 :goto_1

    .line 867
    .end local v16    # "showSettings":Z
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v15, 0x1

    .restart local v15    # "showDelete":Z
    goto/16 :goto_2

    .line 866
    .end local v15    # "showDelete":Z
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "showDelete":Z
    goto/16 :goto_2

    .line 869
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 870
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 886
    .end local v15    # "showDelete":Z
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_d
    const v4, 0x7f0b1942

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    goto :goto_6

    .line 890
    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 891
    const v4, 0x7f0b193f

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    goto :goto_7

    .line 900
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_0

    .line 904
    :cond_10
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 909
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    .end local v17    # "user":Landroid/content/pm/UserInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v4, :cond_12

    .line 910
    new-instance v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    .line 911
    const/16 v7, -0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    .line 910
    invoke-direct/range {v4 .. v9}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 912
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setEnabled(Z)V

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 914
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 919
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_12
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_SupportDualNumberService"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 920
    .local v11, "isDualNumber":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    if-nez v4, :cond_13

    .line 921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    .line 920
    if-eqz v4, :cond_14

    .line 921
    :cond_13
    if-eqz v11, :cond_16

    .line 936
    :cond_14
    :goto_8
    sget-object v4, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 941
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 942
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 945
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 953
    .local v14, "preferenceScreen":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_19

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 957
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 961
    .local v10, "groupToAddUsers":Landroid/preference/PreferenceGroup;
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "userPreference$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/users/UserPreference;

    .line 962
    .local v19, "userPreference":Lcom/android/settings/users/UserPreference;
    const v4, 0x7fffffff

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/settings/users/UserPreference;->setOrder(I)V

    .line 963
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 923
    .end local v10    # "groupToAddUsers":Landroid/preference/PreferenceGroup;
    .end local v14    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v19    # "userPreference":Lcom/android/settings/users/UserPreference;
    .end local v20    # "userPreference$iterator":Ljava/util/Iterator;
    :cond_16
    new-instance v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v4, :cond_17

    if-eqz v23, :cond_17

    move-object/from16 v8, p0

    .line 923
    :goto_b
    const/4 v6, 0x0

    .line 924
    const/16 v7, -0xb

    .line 926
    const/4 v9, 0x0

    move-object v4, v2

    .line 923
    invoke-direct/range {v4 .. v9}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 927
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    const v4, 0x7f0b007b

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 928
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 931
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-object v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 930
    :goto_c
    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 932
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    goto/16 :goto_8

    .line 925
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_17
    const/4 v8, 0x0

    goto :goto_b

    .line 931
    .restart local v2    # "pref":Lcom/android/settings/users/UserPreference;
    :cond_18
    const/4 v4, 0x0

    goto :goto_c

    .line 959
    .end local v2    # "pref":Lcom/android/settings/users/UserPreference;
    .restart local v14    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_19
    move-object v10, v14

    .restart local v10    # "groupToAddUsers":Landroid/preference/PreferenceGroup;
    goto :goto_9

    .line 967
    .restart local v20    # "userPreference$iterator":Ljava/util/Iterator;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v4, :cond_1d

    .line 968
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    .line 967
    if-eqz v4, :cond_1d

    .line 969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v13

    .line 970
    .local v13, "moreUsers":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/android/settings/DimmableIconPreference;->setOrder(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 972
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v4, :cond_1f

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v5, v4}, Lcom/android/settings/DimmableIconPreference;->setEnabled(Z)V

    .line 973
    if-nez v13, :cond_20

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getMaxRealUsers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0b1949

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 978
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v4}, Lcom/android/settings/DimmableIconPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 979
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-object v4, v4, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 979
    :goto_f
    invoke-virtual {v5, v4}, Lcom/android/settings/DimmableIconPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 997
    .end local v13    # "moreUsers":Z
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->emergencyInfoActivityPresent()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/preference/Preference;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/preference/Preference;

    invoke-virtual {v14, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 827
    :cond_1e
    return-void

    .line 972
    .restart local v13    # "moreUsers":Z
    :cond_1f
    const/4 v4, 0x1

    goto :goto_d

    .line 976
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 980
    :cond_21
    const/4 v4, 0x0

    goto :goto_f
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1159
    const v0, 0x7f0b19ab

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 406
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 408
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 409
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/users/UserPreference;

    if-eqz v2, :cond_0

    .line 1116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v2}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v1

    .line 1117
    .local v1, "userId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1114
    .end local v1    # "userId":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1120
    .restart local v1    # "userId":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1121
    const-string/jumbo v3, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 1120
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1122
    .local v0, "removeDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_1

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 1126
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 1130
    .end local v0    # "removeDisallowedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :pswitch_2
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 1117
    :pswitch_data_0
    .packed-switch 0x7f110599
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 212
    .local v10, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_2

    .line 213
    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string/jumbo v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 216
    :cond_0
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string/jumbo v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 222
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings$UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserSettings$UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    .line 223
    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 224
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_3

    .line 225
    return-void

    .line 228
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 229
    .local v3, "myUserId":I
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMum:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    .line 231
    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 232
    const-string/jumbo v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 233
    const-string/jumbo v0, "user_you"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserYouCategory:Landroid/preference/PreferenceGroup;

    .line 234
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMum:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-virtual {v0, v12}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v11

    .line 235
    :goto_0
    new-instance v0, Lcom/android/settings/users/UserPreference;

    .line 237
    if-eqz v11, :cond_7

    move-object v5, p0

    :goto_1
    move-object v4, v2

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 238
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string/jumbo v4, "user_me"

    invoke-virtual {v0, v4}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v4, 0x7f0b1945

    invoke-virtual {v0, v4}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 243
    :cond_4
    const-string/jumbo v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DimmableIconPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    .line 245
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v0, :cond_5

    .line 249
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    const v4, 0x7f0b193e

    invoke-virtual {v0, v4}, Lcom/android/settings/DimmableIconPreference;->setTitle(I)V

    .line 252
    :cond_5
    const-string/jumbo v0, "lock_screen_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mLockScreenSettings:Landroid/preference/PreferenceGroup;

    .line 253
    const-string/jumbo v0, "add_users_when_locked"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLocked:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 255
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mLockScreenSettings:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLocked:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mLockScreenSettings:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    const-string/jumbo v0, "emergency_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/preference/Preference;

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 261
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_START_CHOICE_POPUP"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v4, v1

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 265
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 267
    iput-boolean v12, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 271
    return-void

    .line 234
    .end local v7    # "filter":Landroid/content/IntentFilter;
    :cond_6
    const/4 v11, 0x0

    .local v11, "showDelete":Z
    goto/16 :goto_0

    .end local v11    # "showDelete":Z
    :cond_7
    move-object v5, v2

    .line 237
    goto/16 :goto_1

    .line 208
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    :cond_8
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 25
    .param p1, "dialogId"    # I

    .prologue
    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 528
    .local v17, "context":Landroid/content/Context;
    if-nez v17, :cond_0

    const/4 v5, 0x0

    return-object v5

    .line 529
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 676
    const/4 v5, 0x0

    return-object v5

    .line 532
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 533
    new-instance v8, Lcom/android/settings/users/UserSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 532
    invoke-static {v5, v7, v8}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v18

    .line 539
    .local v18, "dlg":Landroid/app/Dialog;
    return-object v18

    .line 542
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    const v7, 0x7f0b1956

    .line 542
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 544
    const v7, 0x104000a

    const/4 v8, 0x0

    .line 542
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 547
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 548
    const/4 v7, 0x0

    .line 547
    invoke-virtual {v5, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 550
    .local v22, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "key_add_user_long_message_displayed"

    const/4 v7, 0x0

    .line 549
    move-object/from16 v0, v22

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 551
    .local v20, "longMessageDisplayed":Z
    const v21, 0x7f0b194f

    .line 554
    .local v21, "messageResId":I
    const-string/jumbo v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 555
    const v21, 0x7f0b0cbf

    .line 557
    :cond_1
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    .line 558
    const/16 v24, 0x1

    .line 559
    .local v24, "userType":I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    const v7, 0x7f0b194e

    .line 559
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 563
    new-instance v7, Lcom/android/settings/users/UserSettings$7;

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    .line 562
    const v8, 0x104000a

    .line 559
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 572
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 559
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 574
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 558
    .end local v18    # "dlg":Landroid/app/Dialog;
    .end local v24    # "userType":I
    :cond_2
    const/16 v24, 0x2

    .restart local v24    # "userType":I
    goto :goto_0

    .line 577
    .end local v20    # "longMessageDisplayed":Z
    .end local v21    # "messageResId":I
    .end local v22    # "preferences":Landroid/content/SharedPreferences;
    .end local v24    # "userType":I
    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    const v7, 0x7f0b1951

    .line 577
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 579
    const v7, 0x7f0b1952

    .line 577
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 581
    new-instance v7, Lcom/android/settings/users/UserSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 580
    const v8, 0x7f0b1954

    .line 577
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 586
    const v7, 0x7f0b1955

    const/4 v8, 0x0

    .line 577
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 588
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 591
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 592
    const v7, 0x7f0b1953

    .line 591
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 594
    new-instance v7, Lcom/android/settings/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 593
    const v8, 0x104000a

    .line 591
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 599
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 591
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 601
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 604
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v6, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 606
    .local v15, "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    const v7, 0x7f0b194c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v5, "summary"

    const v7, 0x7f0b194a    # 1.84894E38f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 609
    .local v14, "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "title"

    const v7, 0x7f0b194d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string/jumbo v5, "summary"

    const v7, 0x7f0b194b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 614
    .local v16, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 616
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const-string/jumbo v7, "title"

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-string/jumbo v7, "summary"

    const/4 v9, 0x1

    aput-object v7, v8, v9

    .line 617
    const v7, 0x1020016

    const v9, 0x1020010

    filled-new-array {v7, v9}, [I

    move-result-object v9

    .line 615
    const v7, 0x7f040305

    .line 614
    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 618
    .local v4, "adapter":Landroid/widget/SimpleAdapter;
    const v5, 0x7f0b1948

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 620
    new-instance v5, Lcom/android/settings/users/UserSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 619
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 628
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 631
    .end local v4    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v6    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 632
    const v7, 0x7f0b0cbc

    .line 631
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 633
    const v7, 0x7f0b1940

    .line 631
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 635
    new-instance v7, Lcom/android/settings/users/UserSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 634
    const v8, 0x7f0b1941

    .line 631
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 641
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 631
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 643
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 646
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 647
    const v7, 0x7f0b1968

    .line 646
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 648
    const v7, 0x7f0b1969

    .line 646
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 650
    new-instance v7, Lcom/android/settings/users/UserSettings$12;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 649
    const v8, 0x7f0b189b

    .line 646
    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 656
    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    .line 646
    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 658
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 661
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v23

    .line 662
    .local v23, "user":Landroid/content/pm/UserInfo;
    const/16 v19, 0x0

    .line 663
    .local v19, "isDefaultIcon":Z
    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 664
    :cond_3
    const/16 v19, 0x1

    .line 666
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 668
    if-eqz v19, :cond_5

    const/4 v9, 0x0

    .line 669
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/settings/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 672
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    .line 670
    const v11, 0x7f0b123e

    move-object/from16 v8, p0

    move-object/from16 v12, p0

    .line 666
    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v18

    .line 673
    .restart local v18    # "dlg":Landroid/app/Dialog;
    return-object v18

    .line 668
    .end local v18    # "dlg":Landroid/app/Dialog;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v5}, Lcom/android/settings/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_1

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 520
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDialogShowing()V

    .line 522
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 519
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1139
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 1140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 1141
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1137
    return-void

    .line 1138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1168
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 297
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 295
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1163
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1147
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLocked:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-ne p1, v3, :cond_1

    move-object v0, p2

    .line 1148
    check-cast v0, Ljava/lang/Boolean;

    .line 1149
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "add_users_when_locked"

    .line 1150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    .line 1149
    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1151
    return v2

    .line 1154
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1066
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    if-ne p1, v3, :cond_3

    .line 1067
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-eqz v3, :cond_0

    .line 1068
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 1069
    return v4

    .line 1072
    :cond_0
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1073
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {p0, v3, v8}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    .line 1098
    .end local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return v8

    .line 1075
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_2
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1077
    :cond_3
    instance-of v3, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v3, :cond_4

    .line 1078
    check-cast p1, Lcom/android/settings/users/UserPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v2

    .line 1080
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1081
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1082
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 1083
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    iget v6, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v7, 0x2

    .line 1082
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1085
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userId":I
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settings/DimmableIconPreference;

    if-ne p1, v3, :cond_6

    .line 1088
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v3, :cond_5

    .line 1089
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1091
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    goto :goto_0

    .line 1093
    :cond_6
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mEmergencyInfoPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_1

    .line 1094
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.EDIT_EMERGENGY_INFO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1096
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 279
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserSettings$UserCapabilities;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 283
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 289
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->removeDialog(I)V

    .line 276
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    const-string/jumbo v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string/jumbo v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->startingActivityForResult()V

    .line 320
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    return-void
.end method
