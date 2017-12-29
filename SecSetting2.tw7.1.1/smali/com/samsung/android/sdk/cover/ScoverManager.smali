.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# static fields
.field private static sIsClearCoverSystemFeatureEnabled:Z

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsNeonCoverSystemFeatureEnabled:Z

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sServiceVersion:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 180
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 186
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 192
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    .line 198
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 204
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    .line 206
    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverPowerKeyListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLegacyLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 213
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->initSystemFeature()V

    .line 212
    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 385
    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 386
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 387
    const-string/jumbo v0, "ScoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .prologue
    .line 221
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "com.sec.feature.cover.flip"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 224
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 225
    const-string/jumbo v1, "com.sec.feature.cover.sview"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 226
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 227
    const-string/jumbo v1, "com.sec.feature.cover.nfcledcover"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 228
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 229
    const-string/jumbo v1, "com.sec.feature.cover.clearcover"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    .line 230
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "com.sec.feature.cover.neoncover"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    .line 232
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverManagerVersion()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    .line 220
    :cond_0
    return-void
.end method

.method static isSupportableVersion(I)Z
    .locals 8
    .param p0, "supportableVersion"    # I

    .prologue
    const v7, 0xffff

    .line 365
    shr-int/lit8 v6, p0, 0x18

    and-int/lit16 v0, v6, 0xff

    .line 366
    .local v0, "majorVersion":I
    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v1, v6, 0xff

    .line 367
    .local v1, "minorVersion":I
    and-int v2, p0, v7

    .line 368
    .local v2, "revisions":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v3, v6, 0xff

    .line 369
    .local v3, "serviceMajorVersion":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v4, v6, 0xff

    .line 370
    .local v4, "serviceMinorVersion":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    and-int v5, v6, v7

    .line 371
    .local v5, "serviceRevisions":I
    if-lt v3, v0, :cond_0

    if-lt v4, v1, :cond_0

    .line 372
    if-lt v5, v2, :cond_0

    .line 373
    const/4 v6, 0x1

    return v6

    .line 375
    :cond_0
    const/4 v6, 0x0

    return v6
.end method


# virtual methods
.method getCoverManagerVersion()I
    .locals 6

    .prologue
    .line 343
    const/high16 v2, 0x1000000

    .line 344
    .local v2, "serviceVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    :try_start_0
    const-class v3, Lcom/samsung/android/cover/ICoverManager;

    const-string/jumbo v4, "getVersion"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 347
    .local v1, "methodGetVersion":Ljava/lang/reflect/Method;
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 352
    .end local v1    # "methodGetVersion":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const-string/jumbo v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v2

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVersion failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 17

    .prologue
    .line 677
    const/high16 v12, 0x1010000

    .line 678
    .local v12, "hasAttachFieldVersion":I
    const/high16 v15, 0x1020000

    .line 679
    .local v15, "hasModelFieldVersion":I
    const/high16 v13, 0x1070000

    .line 680
    .local v13, "hasFakeCoverVersion":I
    const/high16 v14, 0x10b0000

    .line 681
    .local v14, "hasFotaModeFieldVersion":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    const-string/jumbo v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : This device is not supported cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v1, 0x0

    return-object v1

    .line 686
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v16

    .line 687
    .local v16, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v16, :cond_7

    .line 688
    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v10

    .line 689
    .local v10, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v10, :cond_6

    .line 690
    iget v1, v10, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_1

    .line 691
    const-string/jumbo v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : type of cover is nfc smart cover and cover is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v1, 0x0

    return-object v1

    .line 695
    :cond_1
    const/high16 v1, 0x10b0000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 697
    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    .line 698
    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 699
    iget v7, v10, Lcom/samsung/android/cover/CoverState;->model:I

    iget-boolean v8, v10, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    iget v9, v10, Lcom/samsung/android/cover/CoverState;->fotaMode:I

    .line 696
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZI)V

    .line 719
    .local v0, "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :goto_0
    return-object v0

    .line 700
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_2
    const/high16 v1, 0x1070000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 701
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 702
    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    .line 703
    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 704
    iget v7, v10, Lcom/samsung/android/cover/CoverState;->model:I

    iget-boolean v8, v10, Lcom/samsung/android/cover/CoverState;->fakeCover:Z

    .line 701
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZIZ)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 705
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_3
    const/high16 v1, 0x1020000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 706
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 707
    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    .line 708
    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 709
    iget v7, v10, Lcom/samsung/android/cover/CoverState;->model:I

    .line 706
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 710
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_4
    const/high16 v1, 0x1010000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 711
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 712
    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    .line 713
    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 711
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 715
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    .line 716
    iget-boolean v1, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v10, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v10, Lcom/samsung/android/cover/CoverState;->color:I

    .line 717
    iget v4, v10, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v10, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 715
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 721
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_6
    const-string/jumbo v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : coverState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v10    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v16    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_7
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 724
    :catch_0
    move-exception v11

    .line 725
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ScoverManager"

    const-string/jumbo v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isSupportCover()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    .line 245
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsClearCoverSystemFeatureEnabled:Z

    .line 244
    if-nez v0, :cond_0

    .line 245
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNeonCoverSystemFeatureEnabled:Z

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
