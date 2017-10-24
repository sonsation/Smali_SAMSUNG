.class public final Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;,
        Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static mVersion:I


# instance fields
.field private mAppearance:S

.field private mBondState:I

.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private mContactName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private mIsConnectingErrorPossible:Z

.field private mIsTablet:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPrefixName:Ljava/lang/String;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mRssiGroup:I

.field private final mSemCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSequence:I

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 123
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    .line 128
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 127
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    .line 254
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 256
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 257
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 259
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 253
    return-void
.end method

.method private RssiGroupToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 1391
    const-string/jumbo v0, ""

    .line 1393
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1404
    const-string/jumbo v0, "UNKNOWN"

    .line 1407
    :goto_0
    return-object v0

    .line 1395
    :pswitch_0
    const-string/jumbo v0, "WEAK"

    goto :goto_0

    .line 1398
    :pswitch_1
    const-string/jumbo v0, "MEDIUM"

    goto :goto_0

    .line 1401
    :pswitch_2
    const-string/jumbo v0, "STRONG"

    goto :goto_0

    .line 1393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 374
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    return-void

    .line 378
    :cond_0
    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 380
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 381
    .local v0, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 373
    .end local v0    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_2
    return-void
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 7
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v1

    .line 339
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    const-string/jumbo v4, "CachedBluetoothDevice"

    const-string/jumbo v5, "No profiles. Maybe we will connect later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 352
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 354
    const/4 v2, 0x0

    .line 355
    .local v2, "preferredProfiles":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 356
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 357
    .local v3, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v3, :cond_1

    .line 358
    if-eqz p1, :cond_2

    invoke-interface {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_1

    .line 359
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 361
    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 355
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_2
    invoke-interface {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v4

    goto :goto_1

    .line 366
    .end local v3    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_3
    const-string/jumbo v4, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Preferred profiles = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-nez v2, :cond_4

    .line 369
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    .line 335
    :cond_4
    return-void
.end method

.method private describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-boolean v1, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    .line 184
    const-string/jumbo v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private deviceTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1365
    const-string/jumbo v0, ""

    .line 1367
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1384
    const-string/jumbo v0, "UNKNOWN"

    .line 1387
    :goto_0
    return-object v0

    .line 1369
    :pswitch_0
    const-string/jumbo v0, "GENERIC"

    goto :goto_0

    .line 1372
    :pswitch_1
    const-string/jumbo v0, "GEAR1"

    goto :goto_0

    .line 1375
    :pswitch_2
    const-string/jumbo v0, "GEAR"

    goto :goto_0

    .line 1378
    :pswitch_3
    const-string/jumbo v0, "WEARABLE_CONNECT"

    goto :goto_0

    .line 1381
    :pswitch_4
    const-string/jumbo v0, "WEARABLE"

    goto :goto_0

    .line 1367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private dispatchAttributesChanged()V
    .locals 5

    .prologue
    .line 989
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v4

    .line 990
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    .line 991
    .local v0, "callback":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 989
    .end local v0    # "callback":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
    .end local v2    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 995
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v4

    .line 996
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;

    .line 997
    .local v1, "callback":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;->semOnDeviceAttributesChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 995
    .end local v1    # "callback":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    monitor-exit v4

    .line 988
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 420
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private fetchAppearance()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAppearance()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    .line 746
    return-void
.end method

.method private fetchBtClass()V
    .locals 2

    .prologue
    .line 740
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 741
    .local v0, "newBtClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_0

    .line 742
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 738
    :cond_0
    return-void
.end method

.method private fetchIsTablet()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 757
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v0

    .line 758
    .local v0, "manufacturerData":[B
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v3, :cond_0

    .line 759
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceCategory()B

    move-result v1

    aget-byte v1, v0, v1

    if-ne v1, v3, :cond_0

    .line 760
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    .line 761
    return-void

    .line 764
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    .line 756
    return-void
.end method

.method private fetchName()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 598
    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device has no name (yet), use address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    .line 602
    sget-boolean v0, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Device has no Device name (yet), use address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1
    return-void
.end method

.method private fillData()V
    .locals 3

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 514
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 515
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 517
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    .line 518
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    .line 520
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchAppearance()V

    .line 521
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchManufacturerData()V

    .line 522
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchIsTablet()V

    .line 523
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBondState()V

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 528
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fillData :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 512
    return-void
.end method

.method private getHeadsetDrawableByDeviceName(Ljava/lang/String;)I
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 1613
    const-string/jumbo v0, "SAMSUNG LEVEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1614
    const-string/jumbo v0, "BOX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return v0

    .line 1617
    :cond_0
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return v0

    .line 1618
    :cond_1
    const-string/jumbo v0, "GEAR ICONX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGearCircle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1619
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_iconx:I

    return v0

    .line 1621
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isStubExists(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1217
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1218
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 1220
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "packageInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1221
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1222
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    .line 1223
    const-string/jumbo v5, "CachedBluetoothDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "INSTALLER_STUB is exist. Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const-string/jumbo v5, "com.samsung.android.app.watchmanagerstub"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1225
    sget v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_1

    .line 1226
    return v9

    .line 1228
    :cond_1
    return v8

    .line 1230
    :cond_2
    const-string/jumbo v5, "com.sec.android.app.applinker"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1231
    sget v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_3

    .line 1232
    return v9

    .line 1234
    :cond_3
    return v8

    .line 1239
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1242
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string/jumbo v5, "CachedBluetoothDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "INSTALLER_STUB is not exist. package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return v8
.end method

.method private migrateMessagePermissionChoice()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1099
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "bluetooth_map_permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1101
    .local v1, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1102
    return-void

    .line 1105
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v2

    if-nez v2, :cond_1

    .line 1106
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1107
    .local v0, "oldPermission":I
    if-ne v0, v5, :cond_2

    .line 1108
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 1098
    .end local v0    # "oldPermission":I
    :cond_1
    :goto_0
    return-void

    .line 1109
    .restart local v0    # "oldPermission":I
    :cond_2
    if-ne v0, v6, :cond_1

    .line 1110
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1062
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "bluetooth_phonebook_permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1064
    .local v1, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    return-void

    .line 1068
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    if-nez v2, :cond_1

    .line 1069
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1070
    .local v0, "oldPermission":I
    if-ne v0, v5, :cond_2

    .line 1071
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 1061
    .end local v0    # "oldPermission":I
    :cond_1
    :goto_0
    return-void

    .line 1072
    .restart local v0    # "oldPermission":I
    :cond_2
    if-ne v0, v6, :cond_1

    .line 1073
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0
.end method

.method private setContactName()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1784
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSSManufacturerType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/Utils;->getParsePhoneNumber(Landroid/content/Context;Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    .line 1786
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1787
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/Utils;->retrieveContact(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1788
    .local v0, "contactName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1783
    .end local v0    # "contactName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1789
    .restart local v0    # "contactName":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    goto :goto_0

    .line 1792
    .end local v0    # "contactName":Ljava/lang/String;
    :cond_2
    iput-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setManufacturerData([B)V
    .locals 3
    .param p1, "gm"    # [B

    .prologue
    .line 660
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setManufacturerData to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {v0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;-><init>([B)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    .line 664
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    .line 665
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setContactName()V

    .line 666
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    .line 669
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    .line 670
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setContactName()V

    .line 671
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 772
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 773
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_0

    .line 774
    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v3, "updateProfiles :: uuids is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return v11

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 779
    .local v2, "localUuids":[Landroid/os/ParcelUuid;
    if-nez v2, :cond_1

    .line 780
    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v3, "updateProfiles :: localUuids is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return v11

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    .line 789
    iget-boolean v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 788
    invoke-virtual/range {v0 .. v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 794
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "profile$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 797
    .local v8, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    instance-of v0, v8, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_2

    .line 798
    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v3, "PAN connection exists. Restore PAN profile."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v8}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 800
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 807
    .end local v8    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v9    # "profile$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updating profiles for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    .line 810
    .local v7, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v7, :cond_4

    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_4
    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v3, "UUID:"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    array-length v3, v1

    move v0, v11

    :goto_0
    if-ge v0, v3, :cond_5

    aget-object v10, v1, v0

    .line 813
    .local v10, "uuid":Landroid/os/ParcelUuid;
    const-string/jumbo v4, "CachedBluetoothDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    .end local v10    # "uuid":Landroid/os/ParcelUuid;
    :cond_5
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 505
    const-string/jumbo v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 507
    .local v0, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 503
    .end local v0    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 12
    .param p1, "another"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    const-wide/16 v10, 0x0

    const/16 v7, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1025
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    :goto_1
    sub-int v2, v3, v6

    .line 1026
    .local v2, "comparison":I
    if-eqz v2, :cond_2

    return v2

    .end local v2    # "comparison":I
    :cond_0
    move v3, v5

    .line 1025
    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    .line 1029
    .restart local v2    # "comparison":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v7, :cond_4

    move v3, v4

    .line 1030
    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v6

    if-ne v6, v7, :cond_3

    move v5, v4

    .line 1029
    :cond_3
    sub-int v2, v3, v5

    .line 1031
    if-eqz v2, :cond_5

    return v2

    :cond_4
    move v3, v5

    .line 1029
    goto :goto_2

    .line 1033
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 1034
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondedTimeStamp()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondedTimeStamp()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 1035
    .local v0, "compare":J
    cmp-long v3, v0, v10

    if-lez v3, :cond_6

    .line 1036
    return v4

    .line 1037
    :cond_6
    cmp-long v3, v0, v10

    if-gez v3, :cond_9

    .line 1038
    const/4 v3, -0x1

    return v3

    .line 1042
    .end local v0    # "compare":J
    :cond_7
    iget v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    iget v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    sub-int v2, v3, v4

    .line 1043
    if-eqz v2, :cond_8

    return v2

    .line 1046
    :cond_8
    iget v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSequence:I

    iget v4, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSequence:I

    sub-int v2, v3, v4

    .line 1047
    if-eqz v2, :cond_9

    return v2

    .line 1050
    :cond_9
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 1023
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect(Z)V
    .locals 2
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->shouldLaunchGM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    return-void

    .line 325
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 326
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 316
    return-void
.end method

.method declared-synchronized connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    monitor-enter p0

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 404
    return-void

    .line 406
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 410
    return-void

    .line 412
    :cond_1
    :try_start_2
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 402
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeDetail()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v1, "mStringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[Name] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v2, ", [BondState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_1

    .line 195
    const-string/jumbo v2, ", [COD] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    :goto_0
    const-string/jumbo v2, ", [Appearance] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    iget-short v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eqz v2, :cond_0

    .line 201
    const-string/jumbo v2, ", [RSSI Group] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    invoke-direct {p0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->RssiGroupToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v2, ", [RSSI] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 205
    const-string/jumbo v2, ", [Manufacturer Type] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v4}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string/jumbo v2, ", [Manufacturer Data] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget-byte v0, v4, v2

    .line 208
    .local v0, "byteChar":B
    const-string/jumbo v6, "%02X "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "byteChar":B
    :cond_1
    const-string/jumbo v2, ", [COD] null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public disconnect()V
    .locals 10

    .prologue
    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "sppConnected":Z
    const/4 v1, 0x0

    .line 267
    .local v1, "otherProfileConnected":Z
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 268
    .local v2, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    instance-of v5, v2, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-eqz v5, :cond_1

    .line 270
    const/4 v4, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    .line 284
    :cond_3
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settingslib/R$string;->bluetooth_disconnect_message:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/settingslib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnectWithoutLaunchGM()V

    .line 262
    return-void

    .line 278
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "CachedBluetoothDevice"

    const-string/jumbo v6, "disconnect :: Connected SPP only. It will launch GM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getSppProfile()Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 280
    return-void
.end method

.method public disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    return-void
.end method

.method public disconnectWithoutLaunchGM()V
    .locals 6

    .prologue
    .line 298
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 299
    .local v1, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    instance-of v3, v1, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-eqz v3, :cond_0

    .line 300
    const-string/jumbo v3, "CachedBluetoothDevice"

    const-string/jumbo v4, "disconnectWithoutLaunchGM :: skip disconnect SppProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_0
    const-string/jumbo v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect :: profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 309
    .end local v1    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 310
    .local v0, "PbapProfile":Lcom/android/settingslib/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 312
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 297
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1009
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1010
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method fetchBondState()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 767
    return-void
.end method

.method fetchManufacturerData()V
    .locals 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    .line 753
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fetchManufacturerData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void
.end method

.method public getAppearanceDrawable(I)I
    .locals 3
    .param p1, "appearance"    # I

    .prologue
    .line 1563
    sparse-switch p1, :sswitch_data_0

    .line 1599
    const/4 v1, 0x0

    return v1

    .line 1565
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GALAXY Gear ("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return v1

    .line 1568
    :cond_0
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return v1

    .line 1571
    :sswitch_1
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return v1

    .line 1575
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1576
    .local v0, "deviceName":Ljava/lang/String;
    const-string/jumbo v1, "GEAR FIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1577
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return v1

    .line 1579
    :cond_1
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return v1

    .line 1585
    .end local v0    # "deviceName":Ljava/lang/String;
    :sswitch_3
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_keyboard:I

    return v1

    .line 1588
    :sswitch_4
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_mouse:I

    return v1

    .line 1592
    :sswitch_5
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return v1

    .line 1594
    :sswitch_6
    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_dongle:I

    return v1

    .line 1563
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_2
        0x200 -> :sswitch_6
        0x3c0 -> :sswitch_3
        0x3c1 -> :sswitch_3
        0x3c2 -> :sswitch_4
        0x3c3 -> :sswitch_5
        0x3c4 -> :sswitch_5
    .end sparse-switch
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    return v0
.end method

.method public getBtClassDrawable()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1444
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1445
    .local v1, "mDeviceName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1447
    .local v5, "resIcon":I
    const-string/jumbo v7, "CachedBluetoothDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBtClassDrawable :: Device Name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", BluetoothClass = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Appearance = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-short v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    if-eqz v7, :cond_0

    .line 1450
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceIcon()I

    move-result v5

    .line 1451
    if-eqz v5, :cond_0

    .line 1452
    return v5

    .line 1456
    :cond_0
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v7, :cond_d

    .line 1457
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 1520
    :cond_1
    iget-short v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAppearanceDrawable(I)I

    move-result v5

    .line 1521
    if-eqz v5, :cond_b

    .line 1522
    return v5

    .line 1459
    :sswitch_0
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v8, 0x11c

    if-ne v7, v8, :cond_2

    .line 1460
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return v7

    .line 1462
    :cond_2
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return v7

    .line 1466
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1467
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return v7

    .line 1469
    :cond_3
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return v7

    .line 1473
    :sswitch_2
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v8, 0x704

    if-ne v7, v8, :cond_1

    .line 1474
    const-string/jumbo v7, "GEAR FIT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1475
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return v7

    .line 1477
    :cond_4
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return v7

    .line 1482
    :sswitch_3
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-static {v7}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v7

    return v7

    .line 1485
    :sswitch_4
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v8, 0x680

    if-eq v7, v8, :cond_5

    .line 1486
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v8, 0x640

    if-ne v7, v8, :cond_6

    .line 1487
    :cond_5
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    return v7

    .line 1489
    :cond_6
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    return v7

    .line 1492
    :sswitch_5
    if-eqz v1, :cond_7

    .line 1493
    invoke-direct {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHeadsetDrawableByDeviceName(Ljava/lang/String;)I

    move-result v5

    .line 1494
    if-eqz v5, :cond_7

    .line 1495
    return v5

    .line 1499
    :cond_7
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGearCircle()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1500
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_gear_circle:I

    return v7

    .line 1503
    :cond_8
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v8, 0x43c

    if-ne v7, v8, :cond_9

    .line 1504
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return v7

    .line 1505
    :cond_9
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    const/16 v8, 0x434

    if-ne v7, v8, :cond_a

    .line 1506
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    return v7

    .line 1511
    :cond_a
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1512
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v7

    .line 1511
    if-eqz v7, :cond_1

    .line 1513
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return v7

    .line 1525
    :cond_b
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1526
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return v7

    .line 1528
    :cond_c
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v7, v10}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1529
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    return v7

    .line 1531
    :cond_d
    iget-short v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    if-eqz v7, :cond_e

    .line 1532
    iget-short v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAppearanceDrawable(I)I

    move-result v5

    .line 1533
    if-eqz v5, :cond_f

    .line 1534
    return v5

    .line 1537
    :cond_e
    const-string/jumbo v7, "CachedBluetoothDevice"

    const-string/jumbo v8, "mBtClass is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_f
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1541
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v7

    .line 1540
    if-eqz v7, :cond_10

    .line 1542
    new-instance v7, Landroid/bluetooth/BluetoothClass;

    const/16 v8, 0x420

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 1543
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return v7

    .line 1546
    :cond_10
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v4

    .line 1547
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "profile$iterator":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1548
    .local v2, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_13

    .line 1549
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v7, :cond_12

    .line 1550
    new-instance v7, Landroid/bluetooth/BluetoothClass;

    const/16 v8, 0x418

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 1551
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return v7

    .line 1548
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1554
    :cond_13
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-interface {v2, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v6

    .line 1555
    .local v6, "resId":I
    if-eqz v6, :cond_11

    .line 1556
    return v6

    .line 1559
    .end local v0    # "i":I
    .end local v2    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .end local v6    # "resId":I
    :cond_14
    sget v7, Lcom/android/settingslib/R$drawable;->list_ic_general_device:I

    return v7

    .line 1457
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_5
        0x500 -> :sswitch_3
        0x600 -> :sswitch_4
        0x700 -> :sswitch_2
    .end sparse-switch
.end method

.method public getConnectionSummary()I
    .locals 14

    .prologue
    .line 1629
    const/4 v10, 0x0

    .line 1632
    .local v10, "profileConnected":Z
    const/4 v2, 0x0

    .line 1633
    .local v2, "isA2dpConnected":Z
    const/4 v3, 0x0

    .line 1634
    .local v3, "isHeadsetConnected":Z
    const/4 v4, 0x0

    .line 1635
    .local v4, "isHidConnected":Z
    const/4 v5, 0x0

    .line 1636
    .local v5, "isNapConnected":Z
    const/4 v6, 0x0

    .line 1637
    .local v6, "isPanuConnected":Z
    const/4 v7, 0x0

    .line 1639
    .local v7, "isSppConnected":Z
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v8

    .line 1640
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_7

    .line 1641
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1642
    .local v9, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-nez v9, :cond_1

    .line 1643
    const-string/jumbo v11, "CachedBluetoothDevice"

    const-string/jumbo v12, "getConnectionSummary :: profile is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1647
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 1648
    .local v0, "connectionStatus":I
    const-string/jumbo v11, "CachedBluetoothDevice"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getConnectionSummary :: profile ::"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  connectionStatus::"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1652
    :pswitch_1
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v11

    return v11

    .line 1655
    :pswitch_2
    const/4 v10, 0x1

    .line 1656
    instance-of v11, v9, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v11, :cond_2

    .line 1657
    const/4 v2, 0x1

    .line 1659
    :cond_2
    instance-of v11, v9, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v11, :cond_3

    .line 1660
    const/4 v3, 0x1

    .line 1662
    :cond_3
    instance-of v11, v9, Lcom/android/settingslib/bluetooth/HidProfile;

    if-eqz v11, :cond_4

    .line 1663
    const/4 v4, 0x1

    .line 1665
    :cond_4
    instance-of v11, v9, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v11, :cond_5

    move-object v11, v9

    check-cast v11, Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1666
    const/4 v5, 0x1

    .line 1668
    :cond_5
    instance-of v11, v9, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v11, :cond_6

    .line 1669
    const/4 v6, 0x1

    .line 1671
    :cond_6
    instance-of v11, v9, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-eqz v11, :cond_0

    .line 1672
    const/4 v7, 0x1

    goto :goto_1

    .line 1681
    .end local v0    # "connectionStatus":I
    .end local v9    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_7
    if-eqz v10, :cond_f

    .line 1682
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 1683
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_summary_connected_to_a2dp_headset:I

    return v11

    .line 1684
    :cond_8
    if-eqz v2, :cond_9

    .line 1685
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    return v11

    .line 1686
    :cond_9
    if-eqz v3, :cond_a

    .line 1687
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_headset_profile_summary_connected:I

    return v11

    .line 1688
    :cond_a
    if-eqz v4, :cond_b

    .line 1689
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_hid_profile_summary_connected:I

    return v11

    .line 1690
    :cond_b
    if-eqz v5, :cond_c

    .line 1691
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_pan_nap_connected:I

    return v11

    .line 1692
    :cond_c
    if-eqz v6, :cond_d

    .line 1693
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_pan_panu_connected:I

    return v11

    .line 1694
    :cond_d
    if-eqz v7, :cond_e

    .line 1695
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_spp_profile_summary_connected:I

    return v11

    .line 1697
    :cond_e
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return v11

    .line 1701
    :cond_f
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 1708
    const/4 v11, 0x0

    return v11

    .line 1703
    :pswitch_3
    sget v11, Lcom/android/settingslib/R$string;->bluetooth_pairing:I

    return v11

    .line 1649
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1701
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method public getContactDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1603
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/Utils;->getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1605
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1606
    return-object v0

    .line 1609
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v3
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1172
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    const-string/jumbo v2, "CachedBluetoothDevice"

    const-string/jumbo v3, "getDeviceType :: EmergencyMode enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return v4

    .line 1177
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1178
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1204
    return v4

    .line 1182
    :pswitch_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v1

    .line 1184
    .local v1, "deviceId":[B
    aget-byte v2, v1, v4

    if-nez v2, :cond_3

    .line 1185
    aget-byte v2, v1, v5

    and-int/lit16 v0, v2, 0xff

    .line 1187
    .local v0, "convertId":I
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x90

    if-lt v0, v2, :cond_2

    .line 1188
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xff

    if-gt v0, v2, :cond_2

    .line 1189
    const-string/jumbo v2, "com.sec.android.app.applinker"

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isStubExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1190
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getBluetoothType()B

    move-result v2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v2, v5, :cond_1

    .line 1191
    const/4 v2, 0x3

    return v2

    .line 1193
    :cond_1
    const/4 v2, 0x4

    return v2

    .line 1196
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v0, v5, :cond_3

    .line 1197
    const-string/jumbo v2, "com.samsung.android.app.watchmanagerstub"

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isStubExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1198
    const/4 v2, 0x2

    return v2

    .line 1202
    .end local v0    # "convertId":I
    :cond_3
    return v4

    .line 1207
    .end local v1    # "deviceId":[B
    :cond_4
    const-string/jumbo v2, "com.samsung.android.app.watchmanagerstub"

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isStubExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isGear1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1208
    return v5

    .line 1211
    :cond_5
    return v4

    .line 1178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getManufacturerData()Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    return-object v0
.end method

.method public getMaxConnectionState()I
    .locals 6

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    .line 1157
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    const/4 v3, 0x0

    .line 1159
    .local v3, "maxState":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 1160
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1161
    .local v4, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v4, :cond_0

    .line 1162
    invoke-virtual {p0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 1163
    .local v0, "connectionStatus":I
    if-le v0, v3, :cond_0

    .line 1164
    move v3, v0

    .line 1159
    .end local v0    # "connectionStatus":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1168
    .end local v4    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContactName:Ljava/lang/String;

    return-object v0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDeviceName:Ljava/lang/String;

    return-object v0

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameForLog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1798
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1799
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1803
    :cond_0
    return-object v0

    .line 1800
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":XX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I
    .locals 4
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 486
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "state":I
    if-eqz p1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 496
    :cond_1
    const-string/jumbo v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileConnectionState :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return v0

    .line 500
    .end local v0    # "state":I
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    monitor-enter v2

    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 931
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 928
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 6
    .param p1, "target"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v5, 0x0

    .line 911
    if-nez p1, :cond_0

    .line 912
    const-string/jumbo v3, "CachedBluetoothDevice"

    const-string/jumbo v4, "hasProfile :: target profile is null, return false."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return v5

    .line 916
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v1

    .line 917
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 918
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 919
    .local v2, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 920
    const/4 v3, 0x1

    return v3

    .line 917
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 923
    .end local v2    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_2
    return v5
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 703
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v1

    .line 704
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 705
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 706
    .local v2, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v2, :cond_1

    .line 707
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v3

    .line 708
    .local v3, "status":I
    if-eq v3, v4, :cond_0

    .line 709
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 710
    :cond_0
    return v4

    .line 704
    .end local v3    # "status":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    .end local v2    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 690
    const/4 v0, 0x1

    return v0

    .line 693
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 697
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 698
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isGear1()Z
    .locals 2

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    move-result v0

    sget v1, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    if-ne v0, v1, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GALAXY Gear ("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGearCircle()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 718
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v1

    .line 719
    .local v1, "manufacturerData":[B
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_1

    .line 720
    array-length v2, v1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    return v4

    .line 722
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object v0

    .line 723
    .local v0, "deviceId":[B
    aget-byte v2, v0, v4

    if-nez v2, :cond_1

    aget-byte v2, v0, v5

    if-ne v2, v5, :cond_1

    .line 724
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x404

    if-ne v2, v3, :cond_1

    .line 725
    return v5

    .line 728
    .end local v0    # "deviceId":[B
    :cond_1
    return v4
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsTablet:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 329
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 7
    .param p1, "bondState"    # I

    .prologue
    const/4 v6, 0x0

    .line 857
    const-string/jumbo v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBondingStateChanged :: Device ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], bond state change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 860
    const/16 v3, 0xa

    if-ne p1, v3, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    .line 867
    iput-boolean v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 868
    invoke-virtual {p0, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 869
    invoke-virtual {p0, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 870
    invoke-virtual {p0, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    .line 873
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v4

    .line 874
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    .line 875
    .local v0, "callback":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 873
    .end local v0    # "callback":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
    .end local v2    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "callback$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 879
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    monitor-enter v4

    .line 880
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSemCallbacks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;

    .line 881
    .local v1, "callback":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;->semOnDeviceAttributesChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 879
    .end local v1    # "callback":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$SemCallback;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    monitor-exit v4

    .line 885
    const/16 v3, 0xc

    if-ne p1, v3, :cond_4

    .line 886
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 887
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 892
    :cond_3
    :goto_2
    iput-boolean v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 856
    :cond_4
    return-void

    .line 888
    :cond_5
    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v3, :cond_3

    .line 889
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 890
    invoke-direct {p0, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_2
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 4
    .param p1, "profile"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "newProfileState"    # I

    .prologue
    const/4 v3, 0x0

    .line 216
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v2, " newProfileState "

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 230
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    .line 231
    check-cast p1, Lcom/android/settingslib/bluetooth/PanProfile;

    .end local p1    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 230
    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 214
    return-void

    .line 239
    .restart local p1    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 240
    check-cast v0, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 239
    if-eqz v0, :cond_0

    .line 241
    if-nez p2, :cond_0

    .line 242
    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 245
    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 10

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 833
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 835
    .local v2, "uuids":[Landroid/os/ParcelUuid;
    const-wide/16 v0, 0x1388

    .line 836
    .local v0, "timeout":J
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    const-wide/16 v0, 0x7530

    .line 841
    :cond_0
    const-string/jumbo v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUuidChanged: Time since last connect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 842
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v6, v8

    .line 841
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 850
    iget-wide v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 851
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 853
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 831
    return-void
.end method

.method processActionFoundEvent(SLandroid/bluetooth/BluetoothClass;SLjava/lang/String;Z[BI)V
    .locals 4
    .param p1, "rssi"    # S
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;
    .param p3, "appearance"    # S
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "visible"    # Z
    .param p6, "gm"    # [B
    .param p7, "bondState"    # I

    .prologue
    const/16 v2, -0x44

    .line 1725
    const/4 v0, 0x0

    .line 1727
    .local v0, "needUpdate":Z
    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v1, p1, :cond_1

    .line 1728
    const/16 v1, -0x38

    if-lt p1, v1, :cond_9

    .line 1729
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    .line 1736
    :cond_0
    :goto_0
    iput-short p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 1740
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v1, p2, :cond_2

    .line 1741
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 1742
    const/4 v0, 0x1

    .line 1745
    :cond_2
    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    if-eq v1, p3, :cond_3

    .line 1746
    iput-short p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAppearance:S

    .line 1747
    const/4 v0, 0x1

    .line 1750
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1751
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1752
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 1756
    :goto_1
    const/4 v0, 0x1

    .line 1759
    :cond_4
    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v1, p5, :cond_5

    .line 1760
    iput-boolean p5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 1764
    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v1

    if-eq v1, p6, :cond_6

    .line 1765
    invoke-direct {p0, p6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setManufacturerData([B)V

    .line 1766
    const/4 v0, 0x1

    .line 1769
    :cond_6
    iget v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-eq v1, p7, :cond_7

    .line 1770
    iput p7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    .line 1771
    const/4 v0, 0x1

    .line 1774
    :cond_7
    if-eqz v0, :cond_8

    .line 1775
    const-string/jumbo v1, "CachedBluetoothDevice"

    const-string/jumbo v2, "calling dispatchAttributesChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 1779
    :cond_8
    const-string/jumbo v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processActionFoundEvent :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describeDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    return-void

    .line 1730
    :cond_9
    if-lt p1, v2, :cond_a

    .line 1731
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    goto :goto_0

    .line 1732
    :cond_a
    if-ge p1, v2, :cond_0

    .line 1733
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    goto :goto_0

    .line 1754
    :cond_b
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_1
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 606
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 825
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 823
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 590
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 588
    return-void
.end method

.method public setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 3
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 897
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 899
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBtClass :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 902
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 896
    :cond_0
    return-void
.end method

.method public setMessagePermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 1126
    const/4 v0, 0x0

    .line 1127
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1128
    const/4 v0, 0x1

    .line 1132
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 1125
    return-void

    .line 1129
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1130
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setPhonebookPermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 1089
    const/4 v0, 0x0

    .line 1090
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1091
    const/4 v0, 0x1

    .line 1095
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 1088
    return-void

    .line 1092
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1093
    const/4 v0, 0x2

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 2
    .param p1, "rssi"    # S

    .prologue
    const/16 v1, -0x44

    .line 626
    iget-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_1

    .line 627
    const/16 v0, -0x38

    if-lt p1, v0, :cond_2

    .line 628
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    .line 635
    :cond_0
    :goto_0
    iput-short p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 636
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 625
    :cond_1
    return-void

    .line 629
    :cond_2
    if-lt p1, v1, :cond_3

    .line 630
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    goto :goto_0

    .line 631
    :cond_3
    if-ge p1, v1, :cond_0

    .line 632
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssiGroup(I)V

    goto :goto_0
.end method

.method public setRssiGroup(I)V
    .locals 0
    .param p1, "group"    # I

    .prologue
    .line 645
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssiGroup:I

    .line 644
    return-void
.end method

.method setSequence(I)V
    .locals 0
    .param p1, "sequence"    # I

    .prologue
    .line 641
    iput p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSequence:I

    .line 640
    return-void
.end method

.method public setSimPermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 1146
    const/4 v0, 0x0

    .line 1147
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1148
    const/4 v0, 0x1

    .line 1152
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    .line 1145
    return-void

    .line 1149
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1150
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 616
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 617
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 614
    :cond_0
    return-void
.end method

.method public shouldLaunchGM()Z
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x10000000

    .line 1253
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceType()I

    move-result v7

    .line 1256
    .local v7, "type":I
    packed-switch v7, :pswitch_data_0

    .line 1360
    return v11

    .line 1260
    :pswitch_0
    const-string/jumbo v2, "watchmanager"

    .line 1261
    .local v2, "gearManagerName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.sconnect.action.CONNECT_WEARABLE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1262
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "WM_MANAGER"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1263
    const-string/jumbo v8, "MAC"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1265
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.bluetooth.permission.BLUETOOTH_DEVICE"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1266
    const-string/jumbo v8, "CachedBluetoothDevice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shouldLaunchGM :: Send Bradcast to WatchManagerStub, type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    .line 1269
    .local v6, "statusBar":Landroid/app/StatusBarManager;
    if-eqz v6, :cond_0

    .line 1270
    invoke-virtual {v6}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1272
    :cond_0
    return v12

    .line 1277
    .end local v2    # "gearManagerName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "statusBar":Landroid/app/StatusBarManager;
    :pswitch_1
    sget v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    const/16 v9, 0xc8

    if-ge v8, v9, :cond_4

    .line 1278
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v8}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v5

    .line 1279
    .local v5, "manufacturerData":[B
    if-eqz v5, :cond_2

    array-length v8, v5

    if-le v8, v13, :cond_2

    .line 1280
    new-instance v4, Ljava/lang/StringBuilder;

    aget-byte v8, v5, v13

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1281
    .local v4, "mStringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "cnt":I
    :goto_0
    aget-byte v8, v5, v13

    if-ge v1, v8, :cond_1

    .line 1282
    add-int/lit8 v8, v1, 0xb

    aget-byte v8, v5, v8

    int-to-char v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1285
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1286
    .restart local v2    # "gearManagerName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.sconnect.action.CONNECT_WEARABLE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1287
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "WM_MANAGER"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const-string/jumbo v8, "MAC"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1289
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1290
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.bluetooth.permission.BLUETOOTH_DEVICE"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1307
    .end local v1    # "cnt":I
    .end local v2    # "gearManagerName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mStringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "manufacturerData":[B
    :cond_2
    :goto_1
    const-string/jumbo v8, "CachedBluetoothDevice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shouldLaunchGM :: Send Bradcast to WatchManagerStub, type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    .line 1310
    .restart local v6    # "statusBar":Landroid/app/StatusBarManager;
    if-eqz v6, :cond_3

    .line 1311
    invoke-virtual {v6}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1313
    :cond_3
    return v12

    .line 1292
    .end local v6    # "statusBar":Landroid/app/StatusBarManager;
    :cond_4
    sget v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_5

    .line 1294
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.wmanger.action.CONNECT_WEARABLE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1295
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "DATA"

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v9}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1296
    const-string/jumbo v8, "MAC"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1298
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.bluetooth.permission.BLUETOOTH_DEVICE"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1301
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1302
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "DATA"

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v9}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1303
    const-string/jumbo v8, "MAC"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1305
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.bluetooth.permission.BLUETOOTH_DEVICE"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1318
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_2
    sget v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_7

    .line 1319
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1320
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "MAC"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    const-string/jumbo v8, "DATA"

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v9}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1322
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1323
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.bluetooth.permission.BLUETOOTH_DEVICE"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1324
    const-string/jumbo v8, "CachedBluetoothDevice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shouldLaunchGM :: Send Bradcast to AppLinker, type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    .line 1330
    .restart local v6    # "statusBar":Landroid/app/StatusBarManager;
    if-eqz v6, :cond_6

    .line 1331
    invoke-virtual {v6}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1333
    :cond_6
    return v11

    .line 1326
    .end local v6    # "statusBar":Landroid/app/StatusBarManager;
    :cond_7
    const-string/jumbo v8, "CachedBluetoothDevice"

    const-string/jumbo v9, "shouldLaunchGM :: AppLinker version is not satisfy"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1338
    :pswitch_3
    sget v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVersion:I

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_9

    .line 1339
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1340
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "MAC"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string/jumbo v8, "DATA"

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mManufacturerData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-virtual {v9}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getManufacturerRawData()[B

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1342
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1343
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.bluetooth.permission.BLUETOOTH_DEVICE"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1344
    const-string/jumbo v8, "CachedBluetoothDevice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shouldLaunchGM :: Send Bradcast to AppLinker, type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_3
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    .line 1350
    .restart local v6    # "statusBar":Landroid/app/StatusBarManager;
    if-eqz v6, :cond_8

    .line 1351
    invoke-virtual {v6}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1353
    :cond_8
    return v12

    .line 1346
    .end local v6    # "statusBar":Landroid/app/StatusBarManager;
    :cond_9
    const-string/jumbo v8, "CachedBluetoothDevice"

    const-string/jumbo v9, "shouldLaunchGM :: AppLinker version is not satisfy"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1357
    :pswitch_4
    return v11

    .line 1256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startPairing()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 428
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->bluetooth_pairing_error_message:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 435
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.bluetooth"

    .line 436
    const-string/jumbo v2, "BEMC"

    const-string/jumbo v3, "4_bluetooth_message_pairing_error"

    .line 435
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x0

    return v0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_2

    .line 442
    iput-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 448
    :cond_2
    :goto_0
    return v2

    .line 445
    :cond_3
    iput-boolean v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
