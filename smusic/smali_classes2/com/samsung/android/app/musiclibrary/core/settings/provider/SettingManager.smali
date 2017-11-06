.class public final Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;
    }
.end annotation


# static fields
.field private static final BUNDLE_DATA_KEY:Ljava/lang/String; = "key"

.field private static final BUNDLE_DATA_VALUE:Ljava/lang/String; = "value"

.field private static final DEBUG:Z = false

.field private static final KEY_TOTAL_SETTING:Ljava/lang/String; = "key_total_setting"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private mCacheStarted:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMainThreadObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

.field private mProviderUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettingThreadObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mSettingValueChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final mSettingValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingValues:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mCacheStarted:Z

    .line 61
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingValueChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 435
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mResolver:Landroid/content/ContentResolver;

    .line 114
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mAuthority:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mCacheStarted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChangeSettingThread(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChangeMainThread(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    if-nez v0, :cond_1

    .line 87
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private ensureRegisterFromFrameworks()V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Setting"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mThread:Landroid/os/HandlerThread;

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 338
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingValueChangeObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->startCaching()V

    .line 343
    :cond_1
    return-void
.end method

.method private ensureUnregisterFromFrameworks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->stopCaching()V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;->unregisterObserver()V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->unregisterObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 351
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingObserver;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 355
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mThread:Landroid/os/HandlerThread;

    .line 358
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please check createInstance(context) is called before."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    return-object v0
.end method

.method private getSharedPreferenceCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "settings_cache_pref"

    const/4 v3, 0x4

    .line 210
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 211
    .local v0, "cache":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStringInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "value":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mCacheStarted:Z

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 183
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getSharedPreferenceCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_1
    if-nez v0, :cond_2

    .line 194
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    if-nez v0, :cond_2

    .line 196
    move-object v0, p2

    .line 199
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mCacheStarted:Z

    if-eqz v1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_3
    return-object v0
.end method

.method private hasSame(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)Z
    .locals 5
    .param p2, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "observerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    const/4 v3, 0x0

    .line 281
    if-nez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v3

    .line 284
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 287
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 288
    .local v2, "referenceObserver":Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    if-nez v2, :cond_3

    .line 289
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private notifyChange(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "mainThreadCallBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "observerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    const/4 v6, 0x0

    .line 411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 412
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 415
    .local v4, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 416
    .local v3, "observer":Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    if-eqz v3, :cond_1

    .line 417
    if-eqz p4, :cond_0

    .line 418
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 419
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "key"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v5, "value"

    invoke-virtual {v0, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 423
    iput v6, v2, Landroid/os/Message;->what:I

    .line 424
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 427
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    invoke-interface {v3, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    .end local v3    # "observer":Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .end local v4    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;"
    :cond_2
    return-void
.end method

.method private notifyChangeMainThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 386
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    const-string v3, "key_total_setting"

    .line 387
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 388
    .local v0, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    if-eqz v0, :cond_1

    .line 389
    invoke-direct {p0, v0, p1, p2, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChange(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 390
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 391
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 392
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    const-string v3, "key_total_setting"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureUnregisterFromFrameworks()V

    .line 396
    .end local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    check-cast v0, Ljava/util/List;

    .line 397
    .restart local v0    # "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    if-eqz v0, :cond_3

    .line 398
    invoke-direct {p0, v0, p1, p2, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChange(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 400
    .restart local v1    # "size":I
    if-gtz v1, :cond_2

    .line 401
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureUnregisterFromFrameworks()V

    .line 407
    .end local v1    # "size":I
    :goto_0
    return-void

    .line 405
    :cond_3
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange - invalid key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyChangeSettingThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 361
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    const-string v3, "key_total_setting"

    .line 362
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 363
    .local v0, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    if-eqz v0, :cond_1

    .line 364
    invoke-direct {p0, v0, p1, p2, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChange(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 366
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 367
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    const-string v3, "key_total_setting"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureUnregisterFromFrameworks()V

    .line 372
    .end local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    check-cast v0, Ljava/util/List;

    .line 373
    .restart local v0    # "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    if-eqz v0, :cond_3

    .line 374
    invoke-direct {p0, v0, p1, p2, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChange(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 376
    .restart local v1    # "size":I
    if-gtz v1, :cond_2

    .line 377
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureUnregisterFromFrameworks()V

    .line 383
    .end local v1    # "size":I
    :goto_0
    return-void

    .line 381
    :cond_3
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange - invalid key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerObserverInternal(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "mainThreadCallBack"    # Z

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureRegisterFromFrameworks()V

    .line 262
    if-eqz p3, :cond_1

    .line 263
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    .line 267
    .local v1, "observerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;>;"
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 268
    .local v0, "observerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    if-nez v0, :cond_2

    .line 269
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "observerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 275
    .restart local v0    # "observerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :goto_1
    return-void

    .line 265
    .end local v0    # "observerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    .end local v1    # "observerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;>;"
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    .restart local v1    # "observerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;>;"
    goto :goto_0

    .line 271
    .restart local v0    # "observerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->hasSame(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method private registerObserverInternal(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Z)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .param p2, "mainThreadCallBack"    # Z

    .prologue
    .line 255
    const-string v0, "key_total_setting"

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserverInternal(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 256
    return-void
.end method

.method private removeObserver(Ljava/util/HashMap;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V
    .locals 6
    .param p2, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;>;",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "observerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;>;"
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 312
    .local v1, "observerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    if-nez v1, :cond_1

    .line 313
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 316
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 318
    .local v2, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 319
    .local v3, "referenceObserver":Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    if-eqz v3, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    .end local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;>;"
    .end local v3    # "referenceObserver":Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 325
    .local v4, "size":I
    if-gtz v4, :cond_0

    .line 326
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private startCaching()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mCacheStarted:Z

    .line 119
    return-void
.end method

.method private stopCaching()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mCacheStarted:Z

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    return-void
.end method

.method private unregisterInternalObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .prologue
    .line 300
    const-string v0, "key_total_setting"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterInternalObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private unregisterInternalObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingThreadObserverMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->removeObserver(Ljava/util/HashMap;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mMainThreadObserverMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->removeObserver(Ljava/util/HashMap;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureUnregisterFromFrameworks()V

    .line 307
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 215
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getStringInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 219
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .line 218
    .restart local p2    # "defValue":Z
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 233
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 237
    .end local p2    # "defValue":F
    :goto_0
    return p2

    .line 236
    .restart local p2    # "defValue":F
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 224
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getStringInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 228
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 227
    .restart local p2    # "defValue":I
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 242
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getStringInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 246
    .end local p2    # "defValue":J
    :cond_0
    :goto_0
    return-wide p2

    .line 245
    .restart local p2    # "defValue":J
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method getSettingUriHelper()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mProviderUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mAuthority:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mProviderUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mProviderUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getStringInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 127
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 135
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 131
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 139
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mCacheStarted:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mSettingValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserverInternal(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Z)V

    .line 151
    return-void
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserverInternal(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "mainThreadCallBack"    # Z

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserverInternal(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 164
    return-void
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Z)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .param p2, "mainThreadCallback"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserverInternal(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Z)V

    .line 159
    return-void
.end method

.method public unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterInternalObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 168
    return-void
.end method

.method public unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterInternalObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 172
    return-void
.end method
