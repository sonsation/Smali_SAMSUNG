.class public Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;
.super Ljava/lang/Object;
.source "MilkUIFeature.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkUIFeature"

.field private static mFeaturelist:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mInstance:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;


# instance fields
.field private listener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mContext:Ljava/lang/ref/WeakReference;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->loadPrefs()V

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x3

    .line 82
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->registerBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 83
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x4

    .line 84
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->registerBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 85
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/16 v1, 0x10

    .line 86
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->registerBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-class v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mInstance:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    if-nez v2, :cond_1

    .line 60
    invoke-static {}, Lcom/samsung/android/app/music/common/MusicApplication;->getProcessNameFast()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "process":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 63
    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not UI process : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mInstance:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    .line 70
    .end local v1    # "process":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mInstance:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 59
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public addFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v0, "MilkUIFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFeatureChangedListener addListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .prologue
    .line 145
    sget-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNotSupportedCountry(Z)Z
    .locals 5
    .param p1, "streamingUser"    # Z

    .prologue
    const/4 v1, 0x0

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "countryCode":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.countrycode"

    const-string v4, "KR"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_0
    if-eqz p1, :cond_2

    .line 265
    :cond_1
    :goto_0
    return v1

    .line 259
    :cond_2
    const-string v2, "KR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->IsRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    :cond_3
    const-string v1, "MilkUIFeature"

    const-string v2, "isAvailableServiceArea not supported country"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "MilkUIFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableServiceArea country code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadPrefs()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-static {}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->values()[Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 118
    .local v1, "feature":Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    .local v0, "addfeature":Z
    if-eqz v0, :cond_0

    .line 122
    sget-object v6, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    invoke-virtual {v6, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v6, "MilkUIFeature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadSavedFeature feature - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v0    # "addfeature":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "feature":Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;
    :cond_1
    return-void
.end method

.method public notifyFeatureListener(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 169
    const-string v0, "MilkUIFeature"

    const-string v1, "notifyFeatureListener"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$1;-><init>(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 272
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 276
    const-string v1, "MilkUIFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled requestId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    if-nez p4, :cond_1

    .line 279
    const-string v1, "MilkUIFeature"

    const-string v2, "onApiHandled Intent is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 284
    const-string v1, "MilkUIFeature"

    const-string v2, "getContext is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 293
    :sswitch_0
    if-nez p3, :cond_0

    move-object v0, p4

    .line 295
    check-cast v0, Lcom/samsung/android/app/music/common/model/UserInfo;

    .line 297
    .local v0, "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->updateUserFeatureList(Ljava/lang/Object;)V

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->setUserProfileBySA(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)V

    goto :goto_0

    .line 304
    :cond_3
    const-string v1, "MilkUIFeature"

    const-string v2, "onApiHandled userinfo is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v0    # "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :sswitch_1
    if-nez p3, :cond_0

    .line 310
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->updateCountryFeatureList(Z)V

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v0, "MilkUIFeature"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x3

    .line 93
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unregisterBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x4

    .line 95
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unregisterBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/16 v1, 0x10

    .line 97
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unregisterBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 101
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 104
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 108
    :cond_2
    sput-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mInstance:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    .line 109
    return-void
.end method

.method public removeFeatureListener(Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/feature/IFeatureChangedListener;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->listener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    const-string v0, "MilkUIFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFeatureChangedListener removeListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public savePref()V
    .locals 7

    .prologue
    .line 135
    invoke-static {}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->values()[Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 136
    .local v0, "feature":Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/preferences/Pref;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 139
    const-string v4, "MilkUIFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveFeature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "feature":Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;
    :cond_1
    return-void
.end method

.method public updateCountryFeatureList(Z)V
    .locals 4
    .param p1, "notify"    # Z

    .prologue
    .line 227
    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->NotSupportedCountry:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v0

    .line 229
    .local v0, "prev":Z
    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->isNotSupportedCountry(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    sget-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->NotSupportedCountry:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.countrystatus"

    const/16 v3, 0x7d1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 240
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    const-string v1, "MilkUIFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DynamicShopFeature - updateFeature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->NotSupportedCountry:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 245
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->notifyFeatureListener(Landroid/os/Bundle;)V

    .line 247
    :cond_2
    return-void

    .line 234
    :cond_3
    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    sget-object v2, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->NotSupportedCountry:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.countrystatus"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public declared-synchronized updateUserFeatureList(Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    const-string v3, "MilkUIFeature"

    const-string/jumbo v4, "updateFeaturList"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/common/model/UserInfo;

    move-object v2, v0

    .line 191
    .local v2, "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->clear()V

    .line 193
    const/4 v3, 0x4

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 194
    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    sget-object v4, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->PremiumUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_0
    const-string v3, "1"

    iget-object v4, v2, Lcom/samsung/android/app/music/common/model/UserInfo;->streamingUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    sget-object v4, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    const-string v3, "1"

    iget-object v4, v2, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    sget-object v4, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DownloadableUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    const-string v3, "1"

    iget-object v4, v2, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    sget-object v4, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DrmDownloadUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_2
    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 212
    const-string v3, "MilkUIFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFeatureBySignedin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    invoke-virtual {v5}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->updateCountryFeatureList(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->savePref()V

    .line 220
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "user_info"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->notifyFeatureListener(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 196
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    :try_start_1
    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->mFeaturelist:Ljava/util/EnumSet;

    sget-object v4, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DormancyCount:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    .end local v2    # "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
