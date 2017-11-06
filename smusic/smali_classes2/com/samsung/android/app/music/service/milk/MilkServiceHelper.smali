.class public Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
.super Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
.source "MilkServiceHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MilkServiceHelper"

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.app.music.service.milk.MilkService"

.field private static volatile mInstance:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;


# instance fields
.field private mAppId:I

.field private mApplicationContext:Landroid/content/Context;

.field private final mBroadcastMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCallback:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

.field private mComponent:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mReqMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/app/music/service/milk/IMilkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mApplicationContext:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$1;-><init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mCallback:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    .line 120
    iput-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mComponent:Landroid/content/ComponentName;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mApplicationContext:Landroid/content/Context;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mReqMap:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    .line 127
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mComponent:Landroid/content/ComponentName;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mReqMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->setClassLoader(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "reqId"    # I
    .param p3, "reqType"    # I

    .prologue
    .line 346
    if-nez p1, :cond_1

    .line 347
    const-string v0, "MilkServiceHelper"

    const-string v1, "dispatchApiCall() callback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const-string v0, "MilkServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchApiCall() reqType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mReqMap:Landroid/util/SparseArray;

    .line 352
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    if-ltz p2, :cond_0

    .line 355
    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;->onApiCalled(II)V

    .line 356
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mReqMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    const-string v0, "MilkServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchApiCall() reqMap - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mReqMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-nez v0, :cond_1

    .line 132
    const-class v1, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 136
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mInstance:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setClassLoader(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 342
    const-class v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 343
    return-void
.end method


# virtual methods
.method public addFavoriteAlbum(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 9
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1628
    .local p2, "albumList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    const/4 v8, -0x1

    .line 1631
    .local v8, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    const-string v2, "2"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addFavorite(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1639
    :cond_0
    :goto_0
    const/16 v0, 0x2bd

    invoke-direct {p0, p1, v8, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1641
    return v8

    .line 1635
    :catch_0
    move-exception v7

    .line 1636
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addFavoriteArtist(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 9
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1646
    .local p2, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    const/4 v8, -0x1

    .line 1649
    .local v8, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    const-string v2, "3"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addFavorite(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1657
    :cond_0
    :goto_0
    const/16 v0, 0x2bd

    invoke-direct {p0, p1, v8, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1659
    return v8

    .line 1653
    :catch_0
    move-exception v7

    .line 1654
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addFavoriteMilkPick(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 9
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1664
    .local p2, "milkPickList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    const/4 v8, -0x1

    .line 1667
    .local v8, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    const-string v2, "4"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addFavorite(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1675
    :cond_0
    :goto_0
    const/16 v0, 0x2bd

    invoke-direct {p0, p1, v8, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1677
    return v8

    .line 1671
    :catch_0
    move-exception v7

    .line 1672
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addFavoriteStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "playStation"    # Z

    .prologue
    .line 1276
    const/4 v1, -0x1

    .line 1278
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addFavoriteStation(ILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1285
    :cond_0
    :goto_0
    const/16 v2, 0xca

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1286
    return v1

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addFavoriteTrack(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 9
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1610
    .local p2, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    const/4 v8, -0x1

    .line 1613
    .local v8, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    const-string v2, "1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addFavorite(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1621
    :cond_0
    :goto_0
    const/16 v0, 0x2bd

    invoke-direct {p0, p1, v8, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1623
    return v8

    .line 1617
    :catch_0
    move-exception v7

    .line 1618
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 728
    .local p2, "simpleTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    const/4 v1, 0x0

    .line 730
    .local v1, "ret":[J
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v2, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addMilkTrackList(Ljava/util/List;)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 736
    :cond_0
    :goto_0
    return-object v1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addPlaylistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "playlistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 516
    .local p3, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    const/4 v1, -0x1

    .line 518
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addPlaylistTracks(ILjava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 522
    :goto_0
    const/16 v2, 0x29cd

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 523
    return v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addSmartStationToMyStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "forcePlay"    # Z

    .prologue
    .line 1401
    const/4 v1, -0x1

    .line 1404
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1405
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addSmartStationToMyStation(ILjava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1411
    :cond_0
    :goto_0
    const/16 v2, 0xe3

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1413
    return v1

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addToDBAfterGetCreatedSmartStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1384
    const/4 v1, -0x1

    .line 1387
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1388
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->addToDBAfterGetCreatedSmartStation(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1394
    :cond_0
    :goto_0
    const/16 v2, 0xe3

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1396
    return v1

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public adjustmentMusicVideo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;JJLcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;)I
    .locals 10
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "startTime"    # J
    .param p4, "playPos"    # J
    .param p6, "videoPlay"    # Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    .prologue
    .line 1442
    const/4 v8, -0x1

    .line 1444
    .local v8, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/IMilkService;->adjustmentMusicVideo(IJJLcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1450
    :cond_0
    :goto_0
    const/16 v0, 0x2a32

    invoke-direct {p0, p1, v8, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1451
    return v8

    .line 1447
    :catch_0
    move-exception v7

    .line 1448
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bindService(Landroid/content/ServiceConnection;ZZ)Z
    .locals 1
    .param p1, "listener"    # Landroid/content/ServiceConnection;
    .param p2, "counting"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 148
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->bindService(Landroid/content/ServiceConnection;ZZ)Z

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public broadcastCallback(IIILandroid/content/Intent;)V
    .locals 10
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "object"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(III",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    if-nez p4, :cond_0

    .line 262
    const-string v0, "MilkServiceHelper"

    const-string v1, "broadcastCallback() parcel is null. so do not broadcast."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string/jumbo v0, "responseData"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 267
    .local v6, "resultData":Landroid/os/Parcelable;
    const-string/jumbo v0, "responseExtData"

    .line 268
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    .line 270
    .local v7, "extras":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    .line 272
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 275
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    :goto_1
    if-eqz v2, :cond_2

    .line 276
    const-string v0, "MilkServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastCallback() broadcastCallback : broadcast message. client size - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper$2;-><init>(Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Ljava/util/ArrayList;IIILjava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    :goto_2
    monitor-exit v8

    goto :goto_0

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 273
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 291
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    :cond_2
    :try_start_1
    const-string v0, "MilkServiceHelper"

    const-string v1, "broadcastCallback() broadcastCallback : broadcast message. no client is there."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public checkBroadcastCallback(IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "reqID"    # I
    .param p2, "reqType"    # I
    .param p3, "object"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 247
    if-nez p3, :cond_0

    .line 248
    const-string v2, "MilkServiceHelper"

    const-string v3, "checkBroadcastCallback() object is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return v1

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 255
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 256
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkDRMLicense(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "trackIds"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 1583
    const/4 v1, -0x1

    .line 1585
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->checkDRMLicense(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1591
    :cond_0
    :goto_0
    const/16 v2, 0x27ec

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1592
    return v1

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkFavorite(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "contentId"    # Ljava/lang/String;

    .prologue
    .line 1731
    const/4 v1, -0x1

    .line 1734
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1735
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->checkFavorite(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1741
    :cond_0
    :goto_0
    const/16 v2, 0x2be

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1743
    return v1

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkPayPromotion(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1110
    const/4 v1, -0x1

    .line 1112
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->checkPayPromotion(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1118
    :cond_0
    :goto_0
    const/16 v2, 0x2c89

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1119
    return v1

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkSubscriptionUser()I
    .locals 4

    .prologue
    .line 1097
    const/4 v1, -0x1

    .line 1100
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->checkSubscriptionUser(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1106
    :cond_0
    :goto_0
    return v1

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public completeOrder(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 610
    const/4 v1, -0x1

    .line 613
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->completeOrder(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 619
    :cond_0
    :goto_0
    const/16 v2, 0x27ea

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 620
    return v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public createPersonalStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p4, "isTempCreateStation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Lcom/samsung/android/app/music/common/model/Track;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 1355
    .local p3, "artistList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    const/4 v1, -0x1

    .line 1357
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1358
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->createPersonalStation(ILcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1365
    :cond_0
    :goto_0
    const/16 v2, 0xcf

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1366
    return v1

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public createPlaylist(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "playlistTitle"    # Ljava/lang/String;

    .prologue
    .line 482
    const/4 v1, -0x1

    .line 484
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->createPlaylist(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 488
    :goto_0
    const/16 v2, 0x2969

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 489
    return v1

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public createSmartStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1370
    const/4 v1, -0x1

    .line 1372
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1373
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->createSmartStation(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1379
    :cond_0
    :goto_0
    const/16 v2, 0xe1

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1380
    return v1

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteDownloadbleDevices(Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "deviceList"    # Lcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;
    .param p2, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1566
    const/4 v1, -0x1

    .line 1568
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1569
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->deleteDownloadableDeivces(ILcom/samsung/android/app/music/common/model/milksetting/DeleteDeviceListInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1574
    :cond_0
    :goto_0
    const/16 v2, 0x27e9

    invoke-direct {p0, p2, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1576
    return v1

    .line 1571
    :catch_0
    move-exception v0

    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteExpiredPopups(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventPopupIds"    # Ljava/lang/String;

    .prologue
    .line 1160
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->deleteExpiredPopups(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFavorite(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "favoriteId"    # Ljava/lang/String;

    .prologue
    .line 1714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    .local v1, "favoriteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    const/4 v2, -0x1

    .line 1718
    .local v2, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1719
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v3, v4, p2, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->deleteFavorite(ILjava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1725
    :cond_0
    :goto_0
    const/16 v3, 0x2bf

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1727
    return v2

    .line 1721
    :catch_0
    move-exception v0

    .line 1722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFavorite(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1699
    .local p3, "favoriteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 1701
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1702
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->deleteFavorite(ILjava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1708
    :cond_0
    :goto_0
    const/16 v2, 0x2bf

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1710
    return v1

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFavoriteTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/ArrayList;)I
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1682
    .local p2, "favoriteIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/RemoveFavoriteTrackList;>;"
    const/4 v1, -0x1

    .line 1684
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1685
    const-string v2, "MilkServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[delteFavoriteTracks] favoriteIds size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    const-string v4, "1"

    invoke-interface {v2, v3, v4, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->deleteFavoriteTrackList(ILjava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1692
    :cond_0
    :goto_0
    const/16 v2, 0x2bf

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1694
    return v1

    .line 1688
    :catch_0
    move-exception v0

    .line 1689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deletePlaylistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "playlistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 528
    .local p3, "trackSeqIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 530
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->deletePlaylistTracks(ILjava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 536
    :cond_0
    :goto_0
    const/16 v2, 0x29d0    # 1.5E-41f

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 537
    return v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deletePlaylists(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/ArrayList;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "playlistIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 506
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->deletePlaylist(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 510
    :goto_0
    const/16 v2, 0x296c

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 511
    return v1

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteRadioHistory(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1777
    .local p2, "radioHistoryArray":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;>;"
    const/4 v1, -0x1

    .line 1779
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1780
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->deleteRadioHistory(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1785
    :cond_0
    :goto_0
    const/16 v2, 0x13

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1786
    return v1

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public drmLicenseComplete(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;

    .prologue
    .line 1596
    const/4 v1, -0x1

    .line 1598
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1599
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->drmLicenseComplete(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1604
    :cond_0
    :goto_0
    const/16 v2, 0x27ed

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1605
    return v1

    .line 1601
    :catch_0
    move-exception v0

    .line 1602
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public drmLicenseExpiredTest()Z
    .locals 3

    .prologue
    .line 1895
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1896
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->drmLicenseExpiredTest(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1901
    :goto_0
    return v1

    .line 1898
    :catch_0
    move-exception v0

    .line 1899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1901
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "albumIds"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1881
    const/4 v1, -0x1

    .line 1883
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1884
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getAlbumImageUrls(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1889
    :cond_0
    :goto_0
    const/16 v2, 0x5dd

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1890
    return v1

    .line 1886
    :catch_0
    move-exception v0

    .line 1887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAlbumInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 1290
    const/4 v1, -0x1

    .line 1292
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1293
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getAlbumInfo(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1298
    :cond_0
    :goto_0
    const/16 v2, 0x283d

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1299
    return v1

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAlbumTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;I)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "albumId"    # Ljava/lang/String;
    .param p3, "page"    # I

    .prologue
    .line 852
    const/4 v1, -0x1

    .line 854
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getAlbumTracks(ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 860
    :cond_0
    :goto_0
    const/16 v2, 0x283e

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 861
    return v1

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllFavoriteStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1236
    const/4 v1, -0x1

    .line 1238
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getAllFavoriteStations(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1244
    :cond_0
    :goto_0
    const/16 v2, 0xcb

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1245
    return v1

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getArtistAlbums(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "artistId"    # Ljava/lang/String;

    .prologue
    .line 1027
    const/4 v1, -0x1

    .line 1029
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getArtistAlbums(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1035
    :cond_0
    :goto_0
    const/16 v2, 0x28a3

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1036
    return v1

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getArtistInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "artistId"    # Ljava/lang/String;

    .prologue
    .line 1040
    const/4 v1, -0x1

    .line 1042
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1043
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getArtistInfo(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1048
    :cond_0
    :goto_0
    const/16 v2, 0x28a1

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1049
    return v1

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getArtistMusicVideos(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "artistId"    # Ljava/lang/String;

    .prologue
    .line 1169
    const/4 v1, -0x1

    .line 1171
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    const-string v2, "MilkServiceHelper"

    const-string v3, "getArtistMusicVideos"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getArtistMusicVideos(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1178
    :cond_0
    :goto_0
    const/16 v2, 0x28a5

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1180
    return v1

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getArtistRelatedArtists(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "artistId"    # Ljava/lang/String;

    .prologue
    .line 1053
    const/4 v1, -0x1

    .line 1055
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getArtistRelatedArtists(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1061
    :cond_0
    :goto_0
    const/16 v2, 0x28a4

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1063
    return v1

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getArtistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "artistId"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "sort"    # Ljava/lang/String;

    .prologue
    .line 1014
    const/4 v1, -0x1

    .line 1016
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getArtistTracks(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1022
    :cond_0
    :goto_0
    const/16 v2, 0x28a2

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1023
    return v1

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBixbyRuleStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "tpoBixbyRuleID"    # Ljava/lang/String;

    .prologue
    .line 1868
    const/4 v1, -0x1

    .line 1870
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1871
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getBixbyRuleStations(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1876
    :cond_0
    :goto_0
    const/16 v2, 0xe5

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1877
    return v1

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDownloadbleDevices(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1552
    const/4 v1, -0x1

    .line 1554
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1555
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getDownloadableDeivces(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1560
    :cond_0
    :goto_0
    const/16 v2, 0x27e8

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1561
    return v1

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getEventPopup(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1136
    const/4 v1, -0x1

    .line 1138
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getEventPopup(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1144
    :cond_0
    :goto_0
    const/16 v2, 0x277a

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1145
    return v1

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getEventWeb(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1123
    const/4 v1, -0x1

    .line 1125
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getEventWeb(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1131
    :cond_0
    :goto_0
    const/16 v2, 0x2779

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1132
    return v1

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGenreAlbumsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "genreId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "page"    # I

    .prologue
    .line 903
    const/4 v1, -0x1

    .line 906
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getCategoryDetailGenreAlbumsInfo(ILjava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 913
    :cond_0
    :goto_0
    const/16 v2, 0x2c27

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 916
    return v1

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGenreArtistsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "genreId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "page"    # I

    .prologue
    .line 921
    const/4 v1, -0x1

    .line 924
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getCategoryDetailGenreArtistsInfo(ILjava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 931
    :cond_0
    :goto_0
    const/16 v2, 0x2c28

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 934
    return v1

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGenreChartsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "genreId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "page"    # I

    .prologue
    .line 866
    const/4 v1, -0x1

    .line 869
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getCategoryDetailGenreChartsInfo(ILjava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 876
    :cond_0
    :goto_0
    const/16 v2, 0x2c26

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 879
    return v1

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGenreNextArtistsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "genreId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "page"    # I

    .prologue
    .line 996
    const/4 v1, -0x1

    .line 999
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getCategoryDetailGenreArtistsInfo(ILjava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1006
    :cond_0
    :goto_0
    const/16 v2, 0x2c2c

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1009
    return v1

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLyrics(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1538
    .local p2, "trackIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 1540
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1541
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getLyrics(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1547
    :cond_0
    :goto_0
    const/16 v2, 0x2b60

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1548
    return v1

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMilkAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 677
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getAccessToken(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 683
    :goto_0
    return-object v1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 683
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getModTrack(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;I)I
    .locals 8
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "aq"    # I

    .prologue
    .line 398
    const/4 v7, -0x1

    .line 400
    .local v7, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/IMilkService;->modSongRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 407
    :cond_0
    :goto_0
    const/16 v0, 0x2b5d

    invoke-direct {p0, p1, v7, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 408
    return v7

    .line 403
    :catch_0
    move-exception v6

    .line 404
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMusicCategoryList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 428
    const/4 v1, -0x1

    .line 430
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getMusicCateogoryList(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    :cond_0
    :goto_0
    const/16 v2, 0x2c25

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 437
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMusicVideoPlay(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1428
    .local p2, "mvIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 1430
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1431
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getMusicVideoPlay(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1436
    :cond_0
    :goto_0
    const/16 v2, 0x2a31

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1437
    return v1

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNoticeList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1828
    const/4 v1, -0x1

    .line 1830
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1831
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getNoticeList(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1836
    :cond_0
    :goto_0
    const/16 v2, 0xb

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1837
    return v1

    .line 1833
    :catch_0
    move-exception v0

    .line 1834
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getOnDeviceRecommendSearchKeywords(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1524
    const/4 v1, -0x1

    .line 1526
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1527
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getOnDeviceRecommendSearchKeywords(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1532
    :cond_0
    :goto_0
    const/16 v2, 0x4e88

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1534
    return v1

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPaymentDataSubscription(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "item"    # Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .prologue
    .line 579
    const/4 v1, -0x1

    .line 581
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getPaymentDataSubscription(ILcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 587
    :cond_0
    :goto_0
    const/16 v2, 0x27de

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 589
    return v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPaymentDataTrack(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "trackList"    # Ljava/lang/String;
    .param p3, "promotionId"    # Ljava/lang/String;
    .param p4, "payYn"    # Z

    .prologue
    .line 597
    const/4 v1, -0x1

    .line 599
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getPaymentDataTrack(ILjava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 605
    :cond_0
    :goto_0
    const/16 v2, 0x27e1

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 606
    return v1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPeriodAlbumsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "periodId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "cntryGroup"    # Ljava/lang/String;
    .param p5, "page"    # I

    .prologue
    .line 958
    const/4 v7, -0x1

    .line 961
    .local v7, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getCategoryDetailPeriodAlbumsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 969
    :cond_0
    :goto_0
    const/16 v0, 0x2c2a

    invoke-direct {p0, p1, v7, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 972
    return v7

    .line 965
    :catch_0
    move-exception v6

    .line 966
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPeriodArtistsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "periodId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "cntryGroup"    # Ljava/lang/String;
    .param p5, "page"    # I

    .prologue
    .line 977
    const/4 v7, -0x1

    .line 980
    .local v7, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getCategoryDetailPeriodArtistsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 988
    :cond_0
    :goto_0
    const/16 v0, 0x2c2b

    invoke-direct {p0, p1, v7, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 991
    return v7

    .line 984
    :catch_0
    move-exception v6

    .line 985
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPeriodChartsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "periodId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "cntryGroup"    # Ljava/lang/String;

    .prologue
    .line 884
    const/4 v1, -0x1

    .line 887
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getCategoryDetailPeriodChartsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 895
    :cond_0
    :goto_0
    const/16 v2, 0x2c29

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 898
    return v1

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPeriodNextArtistsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "periodId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "cntryGroup"    # Ljava/lang/String;
    .param p5, "page"    # I

    .prologue
    .line 939
    const/4 v7, -0x1

    .line 942
    .local v7, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getCategoryDetailPeriodArtistsInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 950
    :cond_0
    :goto_0
    const/16 v0, 0x2c2d

    invoke-direct {p0, p1, v7, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 953
    return v7

    .line 946
    :catch_0
    move-exception v6

    .line 947
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPersonalStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 1747
    const/4 v1, -0x1

    .line 1749
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1750
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getPersonalStation(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1755
    :cond_0
    :goto_0
    const/16 v2, 0xd1

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1756
    return v1

    .line 1752
    :catch_0
    move-exception v0

    .line 1753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPickDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "pickId"    # Ljava/lang/String;

    .prologue
    .line 1210
    const/4 v1, -0x1

    .line 1212
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1213
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getPickDetail(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1218
    :cond_0
    :goto_0
    const/16 v2, 0x2906

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1219
    return v1

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPickList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;I)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "page"    # I

    .prologue
    .line 1184
    const/4 v1, -0x1

    .line 1186
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1187
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getPickList(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1192
    :cond_0
    :goto_0
    const/16 v2, 0x2905

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1193
    return v1

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getProperStationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "stationName"    # Ljava/lang/String;

    .prologue
    .line 1341
    const/4 v1, 0x0

    .line 1343
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1344
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getProperStationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1350
    :cond_0
    :goto_0
    return-object v1

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPurchasedDrmTracks(Z)I
    .locals 4
    .param p1, "bMore"    # Z

    .prologue
    .line 650
    const/4 v1, -0x1

    .line 652
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getPurchasedDrmTracks(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 658
    :cond_0
    :goto_0
    return v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPurchasedSubscriptions()I
    .locals 4

    .prologue
    .line 638
    const/4 v1, -0x1

    .line 640
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getPurchasedSubscriptions(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 646
    :cond_0
    :goto_0
    return v1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRadioPlayLimitInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1905
    const/4 v1, -0x1

    .line 1907
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1908
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getRadioPlayLimitInfo(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1913
    :cond_0
    :goto_0
    const/16 v2, 0x27f0

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1914
    return v1

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRecommendRadios(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "radioBoxId"    # Ljava/lang/String;

    .prologue
    .line 1197
    const/4 v1, -0x1

    .line 1199
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getRecommendRadios(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1205
    :cond_0
    :goto_0
    const/16 v2, 0x2a95

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1206
    return v1

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRecommendStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "tpoCode"    # Ljava/lang/String;

    .prologue
    .line 1854
    const/4 v1, -0x1

    .line 1856
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1857
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getRecommendStationinfo(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1862
    :cond_0
    :goto_0
    const/16 v2, 0xe4

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1864
    return v1

    .line 1859
    :catch_0
    move-exception v0

    .line 1860
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSearchAutoCompletes(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1469
    const/4 v1, -0x1

    .line 1471
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1472
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getSearchAutoCompletes(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1477
    :cond_0
    :goto_0
    const/16 v2, 0x4e86

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1478
    return v1

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSearchPresets(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1456
    const/4 v1, -0x1

    .line 1458
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getSearchPresets(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1464
    :cond_0
    :goto_0
    const/16 v2, 0x4e85

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1465
    return v1

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSearchResults(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 10
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;
    .param p4, "order"    # Ljava/lang/String;
    .param p5, "page"    # Ljava/lang/String;
    .param p6, "isBixbyCall"    # Z
    .param p7, "isRecommendKeyword"    # Z

    .prologue
    .line 1483
    const/4 v9, -0x1

    .line 1485
    .local v9, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getSearchResults(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1492
    :cond_0
    :goto_0
    const/16 v0, 0x4e87

    invoke-direct {p0, p1, v9, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1493
    return v9

    .line 1489
    :catch_0
    move-exception v8

    .line 1490
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServerTime()J
    .locals 4

    .prologue
    .line 1418
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getServerTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1424
    :goto_0
    return-wide v2

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1424
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method protected getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    return-object v0
.end method

.method public getStationInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 1223
    const/4 v1, -0x1

    .line 1225
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getStationInfo(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1231
    :cond_0
    :goto_0
    const/16 v2, 0xc9

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1232
    return v1

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStoreData(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 385
    const/4 v1, -0x1

    .line 387
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getStoreData(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 393
    :cond_0
    :goto_0
    const/16 v2, 0x9

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 394
    return v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStoreDisplayDetailPage(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "displayId"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "displayGroup"    # Ljava/lang/String;
    .param p5, "displayType"    # Ljava/lang/String;

    .prologue
    .line 467
    const/4 v7, -0x1

    .line 469
    .local v7, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getStoreDisplayDetailPage(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 476
    :cond_0
    :goto_0
    const/16 v0, 0x2778

    invoke-direct {p0, p1, v7, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 478
    return v7

    .line 473
    :catch_0
    move-exception v6

    .line 474
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStoreMainPage(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 440
    const/4 v1, -0x1

    .line 442
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getStoreMainPage(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 448
    :cond_0
    :goto_0
    const/16 v2, 0x2776

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 449
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getStoreTopNewUpdate(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "displayGroup"    # Ljava/lang/String;

    .prologue
    .line 453
    const/4 v1, -0x1

    .line 455
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getStoreTopNewUpdate(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 461
    :cond_0
    :goto_0
    const/16 v2, 0x2777

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 462
    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTopChartTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "displayId"    # Ljava/lang/String;
    .param p3, "displayType"    # Ljava/lang/String;

    .prologue
    .line 741
    const/4 v1, -0x1

    .line 743
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, p2, p3, v4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getTopChartTracks(ILjava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 749
    :cond_0
    :goto_0
    const/16 v2, 0x2b5e

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 750
    return v1

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTrackDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v1, -0x1

    .line 415
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getTrackDetail(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 422
    :cond_0
    :goto_0
    const/16 v2, 0x2b5d

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 424
    return v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTrackPlayDevicePermission(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 230
    const/4 v1, -0x1

    .line 233
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getTrackPlayDevicePermission(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 240
    :cond_0
    :goto_0
    const/16 v2, 0x4ee9

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 243
    return v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUser()Lcom/samsung/android/app/music/common/model/UserInfo;
    .locals 3

    .prologue
    .line 556
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getUser(I)Lcom/samsung/android/app/music/common/model/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 562
    :goto_0
    return-object v1

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 562
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoCp()I
    .locals 2

    .prologue
    .line 820
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getVideoCp()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 827
    :goto_0
    return v1

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 827
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getVouchers()I
    .locals 4

    .prologue
    .line 1816
    const/4 v1, -0x1

    .line 1818
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1819
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getVoucher(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1824
    :cond_0
    :goto_0
    return v1

    .line 1821
    :catch_0
    move-exception v0

    .line 1822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected handleServiceConnected(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/music/service/milk/IMilkService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mCallback:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->registerCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected handleServiceDisconnected()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    .line 191
    return-void
.end method

.method protected handleUnbindService()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mCallback:Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->unregisterCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    const-string v1, "MilkServiceHelper"

    const-string/jumbo v2, "unbindService() unbindService : unbind completed!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->release()V

    .line 174
    :goto_1
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "MilkServiceHelper"

    const-string/jumbo v2, "unbindService() unbindService : mService is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isClickedToggleButton()Z
    .locals 2

    .prologue
    .line 832
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->isClickedToggleButton()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 838
    :goto_0
    return v1

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 838
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDormancyMode()Z
    .locals 2

    .prologue
    .line 777
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->isDormancyMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 783
    :goto_0
    return v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 783
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkTransportInitialized()Z
    .locals 2

    .prologue
    .line 1919
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1920
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->isNetworkTransportInitialized()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1925
    :goto_0
    return v1

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1925
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVideoAdOn()Z
    .locals 2

    .prologue
    .line 799
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->isVideoAdOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 805
    :goto_0
    return v1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 805
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public redeemVoucher(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;J)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "id"    # J

    .prologue
    .line 1803
    const/4 v1, -0x1

    .line 1805
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1806
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->redeemVoucher(IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1811
    :cond_0
    :goto_0
    const/16 v2, 0x27e6

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1812
    return v1

    .line 1808
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V
    .locals 5
    .param p1, "filterReqType"    # I
    .param p2, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 298
    const-string v1, "MilkServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerBroadcastCallback() filterReqType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 301
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "MilkServiceHelper"

    const-string/jumbo v3, "registerBroadcastCallback() array is null. so create array and put it"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v1, "MilkServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerBroadcastCallback() callback is added. size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    monitor-exit v2

    .line 317
    return-void

    .line 312
    :cond_1
    const-string v1, "MilkServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerBroadcastCallback() callback is already added in list. size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 314
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVoucher(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 1790
    const/4 v1, -0x1

    .line 1792
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1793
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->registerVoucher(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1798
    :cond_0
    :goto_0
    const/16 v2, 0x27e5

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1799
    return v1

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected release()V
    .locals 4

    .prologue
    .line 212
    invoke-super {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->release()V

    .line 213
    const-string v1, "MilkServiceHelper"

    const-string/jumbo v2, "release()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mReqMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 216
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 219
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 220
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 225
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 216
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 224
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 225
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    .line 227
    return-void
.end method

.method public removeFavoriteStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1303
    .local p2, "stationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 1305
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1306
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->removeFavoriteStations(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1311
    :cond_0
    :goto_0
    const/16 v2, 0xcd

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1312
    return v1

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removePersonalStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1328
    .local p2, "stationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 1330
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1331
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->removePersonalStation(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1336
    :cond_0
    :goto_0
    const/16 v2, 0xd5

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1337
    return v1

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public reorderPlaylistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 541
    const/4 v1, -0x1

    .line 543
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->reorderPlaylistTracks(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 549
    :cond_0
    :goto_0
    const/16 v2, 0x29d1    # 1.5001E-41f

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 550
    return v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public replaceDeepLinkStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "playStation"    # Z

    .prologue
    .line 1262
    const/4 v1, -0x1

    .line 1264
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1265
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->replaceDeepLinkStation(ILcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1270
    :cond_0
    :goto_0
    const/16 v2, 0xe0

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1271
    return v1

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestLogin(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Z)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "force"    # Z

    .prologue
    .line 662
    const/4 v1, -0x1

    .line 665
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->requestLogin(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 671
    :cond_0
    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 672
    return v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestLyric(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "lyricUrl"    # Ljava/lang/String;
    .param p4, "lyricType"    # I

    .prologue
    .line 1761
    const/4 v1, -0x1

    .line 1764
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1765
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->requestLyric(ILjava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1771
    :cond_0
    :goto_0
    const/16 v2, 0x6d

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1773
    return v1

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveSettings(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/HashMap;Ljava/util/ArrayList;Z)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p4, "isGenreSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 688
    .local p2, "settingsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "genreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 690
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->saveSettings(ILjava/util/Map;Ljava/util/List;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 696
    :cond_0
    :goto_0
    const/16 v2, 0x25a

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 697
    return v1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchSeed(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;

    .prologue
    .line 1511
    const/4 v1, -0x1

    .line 1513
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1514
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->seedSearch(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1519
    :cond_0
    :goto_0
    const/16 v2, 0x134

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1520
    return v1

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchSeedAutoCompleted(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "autoCompleteString"    # Ljava/lang/String;
    .param p3, "searchType"    # Ljava/lang/String;

    .prologue
    .line 1498
    const/4 v1, -0x1

    .line 1500
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1501
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->seedSearchAutoCompletes(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1506
    :cond_0
    :goto_0
    const/16 v2, 0x12e

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1507
    return v1

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendErrorLog(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 1841
    const/4 v1, -0x1

    .line 1843
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1844
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->sendErrorLog(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1849
    :cond_0
    :goto_0
    const/16 v2, 0x1f7

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1850
    return v1

    .line 1846
    :catch_0
    move-exception v0

    .line 1847
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setClickedToggleButton(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 843
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->setClickedToggleButton(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDormancyMode(Z)Z
    .locals 2
    .param p1, "bMode"    # Z

    .prologue
    .line 788
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->setDormancyMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 794
    :goto_0
    return v1

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 794
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVideoAdOn(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 810
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->setVideoAdOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVideoAdPlayTime(J)V
    .locals 3
    .param p1, "playTime"    # J

    .prologue
    .line 756
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->setVideoAdPlayTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public shouldPlayVideoAd()Z
    .locals 2

    .prologue
    .line 766
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->shouldPlayVideoAd()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 772
    :goto_0
    return v1

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 772
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public subscriptionDeduction(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "trackIds"    # Ljava/lang/String;
    .param p3, "orderIds"    # Ljava/lang/String;

    .prologue
    .line 1084
    const/4 v1, -0x1

    .line 1086
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1087
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->subscriptionDeduction(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1092
    :cond_0
    :goto_0
    const/16 v2, 0x27dd

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1093
    return v1

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/ServiceConnection;

    .prologue
    .line 156
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 159
    :cond_0
    return-void
.end method

.method public unregisterBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V
    .locals 5
    .param p1, "filterReqType"    # I
    .param p2, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    .prologue
    .line 320
    const-string v1, "MilkServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterBroadcastCallback() filterReqType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mBroadcastMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 324
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    const-string v1, "MilkServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterBroadcastCallback() callback is removed from list. size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    monitor-exit v2

    .line 339
    return-void

    .line 331
    :cond_0
    const-string v1, "MilkServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterBroadcastCallback() callback is not registered in list. size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 336
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;>;"
    :cond_1
    :try_start_1
    const-string v1, "MilkServiceHelper"

    const-string/jumbo v3, "unregisterBroadcastCallback() list is null!!"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateBlockedTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 714
    const/4 v1, -0x1

    .line 716
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->updateBlockedTrack(ILcom/samsung/android/app/music/common/model/Station;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 722
    :cond_0
    :goto_0
    const/16 v2, 0x6b

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 723
    return v1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateDoNotShowTime(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .prologue
    .line 1150
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->updateDoNotShowTime(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFavoriteStationOrdinals(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1316
    .local p1, "stationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 1318
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->updateFavoriteStationOrdinals(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1324
    :cond_0
    :goto_0
    return v1

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePersonalStationList()I
    .locals 4

    .prologue
    .line 1249
    const/4 v1, -0x1

    .line 1251
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/service/milk/IMilkService;->getAllPersonalStations(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1257
    :cond_0
    :goto_0
    return v1

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePersonalStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 701
    .local p2, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    const/4 v1, -0x1

    .line 703
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->updatePersonalStations(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 709
    :cond_0
    :goto_0
    const/16 v2, 0xd2

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 710
    return v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePlaylist(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "playlistRequest"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    .prologue
    .line 493
    const/4 v1, -0x1

    .line 495
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->updatePlaylist(ILcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 499
    :goto_0
    const/16 v2, 0x296b

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 500
    return v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSubscription(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "orderId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "detail"    # Ljava/lang/String;

    .prologue
    .line 625
    const/4 v1, -0x1

    .line 627
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/IMilkService;->updateSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 633
    :cond_0
    :goto_0
    const/16 v2, 0x27e2

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 634
    return v1

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateUserInfo(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/PushInfo;)I
    .locals 4
    .param p1, "adultCertifyYn"    # Ljava/lang/String;
    .param p2, "pushInfo"    # Lcom/samsung/android/app/music/common/model/PushInfo;

    .prologue
    .line 566
    const/4 v1, -0x1

    .line 568
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->updateUserInfo(ILjava/lang/String;Lcom/samsung/android/app/music/common/model/PushInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 574
    :cond_0
    :goto_0
    return v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public verifyTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
    .param p2, "ids"    # Ljava/lang/String;

    .prologue
    .line 1070
    const/4 v1, -0x1

    .line 1072
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mService:Lcom/samsung/android/app/music/service/milk/IMilkService;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->mAppId:I

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->verifyTracks(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1078
    :cond_0
    :goto_0
    const/16 v2, 0x27dc

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->dispatchApiCall(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;II)V

    .line 1079
    return v1

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
