.class public Lcom/android/settings/DeviceAdminSettings;
.super Landroid/app/ListFragment;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceAdminSettings$1;,
        Lcom/android/settings/DeviceAdminSettings$2;,
        Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;,
        Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;,
        Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    }
.end annotation


# instance fields
.field private final mAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceOwnerPkg:Ljava/lang/String;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field protected mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mProfileOwnerComponents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/DeviceAdminSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->isRemovingAdmin(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1
    .param p1, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Lcom/android/settings/DeviceAdminSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceAdminSettings$1;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v0, Lcom/android/settings/DeviceAdminSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceAdminSettings$2;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 64
    return-void
.end method

.method private addActiveAdminsForProfile(Ljava/util/List;I)V
    .locals 13
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v12, 0x0

    .line 440
    if-eqz p1, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 442
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 443
    .local v5, "iPackageManager":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 444
    .local v7, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 445
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 449
    .local v0, "activeAdmin":Landroid/content/ComponentName;
    const v9, 0xc8080

    .line 448
    :try_start_0
    invoke-interface {v5, v0, v9, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 456
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->createDeviceAdminInfo(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v2

    .line 457
    .local v2, "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    if-nez v2, :cond_0

    .line 444
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    :catch_0
    move-exception v3

    .line 453
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "DeviceAdminSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to load component: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 462
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    :cond_0
    new-instance v6, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;

    invoke-direct {v6, v12}, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;-><init>(Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;)V

    .line 463
    .local v6, "item":Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;
    iput-object v2, v6, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 464
    invoke-virtual {v2, v8}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    .line 465
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    .line 466
    iget-object v9, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 439
    .end local v0    # "activeAdmin":Landroid/content/ComponentName;
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    .end local v4    # "i":I
    .end local v5    # "iPackageManager":Landroid/content/pm/IPackageManager;
    .end local v6    # "item":Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;
    .end local v7    # "n":I
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    return-void
.end method

.method private addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V
    .locals 11
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "alreadyAddedComponents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    const/4 v10, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 400
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    const v9, 0x8080

    .line 399
    invoke-virtual {v5, v8, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 403
    .local v1, "enabledForProfile":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 406
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 407
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 408
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 410
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 411
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 410
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v7, "riComponentName":Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    .line 413
    invoke-interface {p1, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 407
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    :cond_2
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v8}, Lcom/android/settings/DeviceAdminSettings;->createDeviceAdminInfo(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 416
    .local v0, "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 417
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 418
    const-string/jumbo v8, "com.samsung.knox.securefolder"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 417
    if-nez v8, :cond_1

    .line 421
    new-instance v3, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;

    invoke-direct {v3, v10}, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;-><init>(Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;)V

    .line 422
    .local v3, "item":Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;
    iput-object v0, v3, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 423
    invoke-virtual {v0, v5}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->name:Ljava/lang/String;

    .line 425
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;->active:Z

    .line 426
    iget-object v8, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v0    # "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    .end local v3    # "item":Lcom/android/settings/DeviceAdminSettings$DeviceAdminListItem;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "riComponentName":Landroid/content/ComponentName;
    :cond_3
    return-void
.end method

.method private createDeviceAdminInfo(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 4
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 480
    :try_start_0
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DeviceAdminSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    const/4 v1, 0x0

    return-object v1
.end method

.method private getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1
    .param p1, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 493
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method private isRemovingAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method private updateAvailableAdminsForProfile(I)V
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 380
    .local v0, "activeAdminsListForProfile":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/settings/DeviceAdminSettings;->addActiveAdminsForProfile(Ljava/util/List;I)V

    .line 383
    invoke-direct {p0, v0, p1}, Lcom/android/settings/DeviceAdminSettings;->addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V

    .line 373
    return-void
.end method


# virtual methods
.method public getPositionADMForBixby()I
    .locals 3

    .prologue
    .line 499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v2, "MdmDeviceAdminReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    return v0

    .line 499
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 132
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->setHasOptionsMenu(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 119
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    .line 127
    const v0, 0x7f0400db

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .local v3, "o":Ljava/lang/Object;
    move-object v1, v3

    .line 224
    check-cast v1, Landroid/app/admin/DeviceAdminInfo;

    .line 225
    .local v1, "dpi":Landroid/app/admin/DeviceAdminInfo;
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 226
    .local v4, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 227
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 222
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DeviceAdministrators"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/16 v11, 0x64

    const/4 v4, 0x0

    .line 140
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 141
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 143
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v6

    .line 148
    .local v6, "deviceOwnerComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 147
    :cond_0
    iput-object v4, p0, Lcom/android/settings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    .line 152
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ge v0, v11, :cond_2

    .line 154
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-lt v0, v11, :cond_1

    .line 155
    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v7, v7, -0x1

    .line 152
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 159
    :cond_2
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 160
    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 161
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 166
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 167
    .local v10, "profilesSize":I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_4

    .line 168
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 169
    .local v8, "profileId":I
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 171
    .end local v8    # "profileId":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->updateList()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f02b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DeviceAdministrators"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method updateList()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    .line 193
    iget-object v4, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v4, p0, Lcom/android/settings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 197
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 198
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 199
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 200
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    add-int/lit8 v0, v0, -0x1

    .line 197
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 205
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 211
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 212
    .local v3, "profilesSize":I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    .line 213
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 214
    .local v1, "profileId":I
    invoke-direct {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->updateAvailableAdminsForProfile(I)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 216
    .end local v1    # "profileId":I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/DeviceAdminSettings;->mAdmins:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;

    invoke-direct {v5, p0}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    return-void
.end method
