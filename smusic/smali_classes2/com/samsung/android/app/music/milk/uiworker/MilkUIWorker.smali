.class public Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;
.super Ljava/lang/Object;
.source "MilkUIWorker.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioUIWorker"

.field private static mInstance:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;


# instance fields
.field private mActivityCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

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

.field private mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

.field private mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

.field private mUndoToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mContext:Ljava/lang/ref/WeakReference;

    .line 75
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private checkContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mContext:Ljava/lang/ref/WeakReference;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    .line 106
    :cond_1
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 966
    const/4 v0, 0x0

    .line 969
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-class v1, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mInstance:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    if-nez v0, :cond_1

    .line 80
    const-class v2, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mInstance:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "RadioUIWorker"

    const-string v3, "getInstance : New Instance"

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mInstance:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    .line 87
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mInstance:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->checkContext(Landroid/content/Context;)V

    .line 88
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mInstance:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 85
    :cond_0
    :try_start_3
    const-string v0, "RadioUIWorker"

    const-string v3, "getInstance : Get Initialized instance"

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 90
    :cond_1
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mInstance:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->checkContext(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private getUndoToast(Lcom/samsung/android/app/music/milk/radio/IDialFragment;)Landroid/view/View;
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getBansongView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private isMilkServiceConnected()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayServiceConnected()Z
    .locals 4

    .prologue
    .line 267
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->duration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportedCountry()Z
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x1

    return v0
.end method

.method private sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V
    .locals 4
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .prologue
    .line 980
    if-eqz p2, :cond_0

    .line 981
    const-string v1, "RadioUIWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]sendErrorResByNullContext : Context is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 983
    .local v0, "res_arg":Landroid/os/Bundle;
    const-string v1, "LocationTag"

    const-string v2, "RadioUIWorker"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v1, "ResType"

    const-string v2, "NOT_DEFINE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v1, "ResCode"

    const-string v2, "Parameter Error"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;->onWorkerFinished(ZLandroid/os/Bundle;)V

    .line 991
    .end local v0    # "res_arg":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 989
    :cond_0
    const-string v1, "RadioUIWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]sendErrorResByNullContext : response is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNotSupprotCountryUI()V
    .locals 3

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a037f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 954
    return-void
.end method


# virtual methods
.method public addFavoriteAlbum(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V
    .locals 6
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteAlbumRequest;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 704
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteAlbum;

    .line 705
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteAlbum;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 707
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 717
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 710
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addFavoriteAlbum : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 715
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "addFavoriteAlbum"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public addFavoriteArtist(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V
    .locals 6
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 667
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteArtist;

    .line 668
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteArtist;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 670
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 680
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 673
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addFavoriteArtist : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 678
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "addFavoriteArtist"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public addFavoriteMilkmagazine(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V
    .locals 6
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 739
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 740
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;

    .line 741
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 744
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 754
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 747
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addFavoriteAlbum : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 752
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "addFavoriteMilkmagazine"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public addFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 7
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    const/4 v6, 0x1

    .line 611
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 612
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;

    .line 613
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V

    .line 615
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 625
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 618
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addFavoriteSong : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v2, v0, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 623
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "addFavoriteSong"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public addTPOStation(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "tpoCode"    # Ljava/lang/String;

    .prologue
    .line 916
    return-void
.end method

.method public addTPOStationByRuleID(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "ruleId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 893
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;

    .line 894
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddTPOStationByRuleID;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 896
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 903
    :goto_0
    return-void

    .line 899
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addTPOStation : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v6, v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0
.end method

.method public addToCurrentPlaylist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "forcePlay"    # Z

    .prologue
    const/4 v6, 0x1

    .line 798
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddModSong;

    .line 799
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddModSong;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Z)V

    .line 801
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 808
    :goto_0
    return-void

    .line 804
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addToCurrentPlaylist : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v6, v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0
.end method

.method public addToCurrentPlaylistByLocal(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .param p3, "forcePlay"    # Z

    .prologue
    .line 822
    return-void
.end method

.method public addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "forcePlay"    # Z

    .prologue
    const/4 v6, 0x0

    .line 522
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZ)V

    .line 523
    return-void
.end method

.method public addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZ)V
    .locals 11
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "forcePlay"    # Z
    .param p6, "goRadioTab"    # Z
    .param p7, "isDeepLink"    # Z

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 457
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    .line 460
    .local v10, "isPrefetching":Z
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZ)V

    .line 464
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 485
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v10    # "isPrefetching":Z
    :goto_0
    return-void

    .line 467
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .restart local v10    # "isPrefetching":Z
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addToMyStations : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$4;

    invoke-direct {v4, p0, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$4;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 480
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v10    # "isPrefetching":Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0

    .line 483
    :cond_2
    const-string v1, "createStationByArtist"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "stationId"    # Ljava/lang/String;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "forcePlay"    # Z

    .prologue
    const/4 v6, 0x0

    .line 527
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 528
    return-void
.end method

.method public addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 11
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "stationId"    # Ljava/lang/String;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "forcePlay"    # Z
    .param p6, "goRadioTab"    # Z
    .param p7, "isDeepLink"    # Z

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    .line 494
    .local v10, "isPrefetching":Z
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 498
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 518
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v10    # "isPrefetching":Z
    :goto_0
    return-void

    .line 501
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .restart local v10    # "isPrefetching":Z
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addToMyStations : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$5;

    invoke-direct {v4, p0, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$5;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 513
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v10    # "isPrefetching":Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0

    .line 516
    :cond_2
    const-string v1, "addToMyStations"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public addToPlaylitst(Landroid/app/Activity;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 8
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    const/4 v7, 0x1

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Track;)V

    .line 290
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 300
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 293
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "addToPlaylitst : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v7, v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 298
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0
.end method

.method public addTrackList(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p2, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    return-void
.end method

.method public createSmartStation(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Z)V
    .locals 8
    .param p1, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "isDeepLink"    # Z

    .prologue
    const/4 v7, 0x1

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 393
    .local v6, "isPrefetching":Z
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateSmartStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Z)V

    .line 397
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 417
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v6    # "isPrefetching":Z
    :goto_0
    return-void

    .line 400
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .restart local v6    # "isPrefetching":Z
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "createSmartStation : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    new-instance v2, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$2;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;)V

    invoke-virtual {v1, v7, v7, v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 412
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v6    # "isPrefetching":Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0

    .line 415
    :cond_2
    const-string v1, "createSmartStation"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZ)V
    .locals 7
    .param p1, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p4, "forcePlay"    # Z
    .param p5, "isTempCreateStation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p3, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZZ)V

    .line 329
    return-void
.end method

.method public createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZZ)V
    .locals 9
    .param p1, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p4, "forcePlay"    # Z
    .param p5, "isTempCreateStation"    # Z
    .param p6, "goRadioTab"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p3, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    const/4 v7, 0x0

    .line 348
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 350
    return-void
.end method

.method public createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p4, "forcePlay"    # Z
    .param p5, "isTempCreateStation"    # Z
    .param p6, "goRadioTab"    # Z
    .param p7, "renameStation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p3, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    .local p8, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    new-instance v2, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v2 .. v15}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 429
    .local v2, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v16

    .line 431
    .local v16, "isPrefetching":Z
    if-nez v16, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 451
    .end local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v16    # "isPrefetching":Z
    :goto_0
    return-void

    .line 434
    .restart local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .restart local v16    # "isPrefetching":Z
    :cond_0
    const-string v3, "RadioUIWorker"

    const-string v4, "createStationByArtist : Service is not active .. excute after connecting service"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$3;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;)V

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 446
    .end local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v16    # "isPrefetching":Z
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0

    .line 449
    :cond_2
    const-string v3, "createStationByArtist"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZ)V
    .locals 10
    .param p1, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "trackName"    # Ljava/lang/String;
    .param p6, "forcePlay"    # Z
    .param p7, "isTempCreateStation"    # Z
    .param p8, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p5, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZZ)V

    .line 336
    return-void
.end method

.method public createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 17
    .param p1, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "trackName"    # Ljava/lang/String;
    .param p6, "forcePlay"    # Z
    .param p7, "isTempCreateStation"    # Z
    .param p8, "goRadioTab"    # Z
    .param p9, "renameStation"    # Ljava/lang/String;
    .param p11, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p5, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    .local p10, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v16

    .line 360
    .local v16, "isPrefetching":Z
    new-instance v2, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v2 .. v15}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 365
    .local v2, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-nez v16, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 385
    .end local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v16    # "isPrefetching":Z
    :goto_0
    return-void

    .line 368
    .restart local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .restart local v16    # "isPrefetching":Z
    :cond_0
    const-string v3, "RadioUIWorker"

    const-string v4, "createStationByTrack : Service is not active .. excute after connecting service"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$1;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;)V

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 380
    .end local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v16    # "isPrefetching":Z
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0

    .line 383
    :cond_2
    const-string v3, "createStationByTrack"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZZ)V
    .locals 12
    .param p1, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "trackName"    # Ljava/lang/String;
    .param p6, "forcePlay"    # Z
    .param p7, "isTempCreateStation"    # Z
    .param p8, "goRadioTab"    # Z
    .param p9, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p5, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;Z)V

    .line 343
    return-void
.end method

.method public delayBanSong(Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 9
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p3, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 919
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 920
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getUndoToast(Lcom/samsung/android/app/music/milk/radio/IDialFragment;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    .line 921
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getBansongView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->getBansongView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    .line 928
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .line 929
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getUndoToast(Lcom/samsung/android/app/music/milk/radio/IDialFragment;)Landroid/view/View;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Landroid/view/View;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Station;)V

    .line 932
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 933
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 935
    :cond_3
    const-string v1, "RadioUIWorker"

    const-string v2, "delayBanSong : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v7, v7, v0, v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 940
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_4
    const-string v1, "delayBanSong"

    invoke-direct {p0, v1, v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public deleteFavoriteAlbum(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V
    .locals 6
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "favoriteId"    # Ljava/lang/String;

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 722
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteAlbum;

    .line 723
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteAlbum;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 725
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 735
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 728
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "deleteFavoriteArtist : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 733
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "deleteFavoriteAlbum"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public deleteFavoriteArtist(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V
    .locals 6
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "favoriteId"    # Ljava/lang/String;

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 685
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteArtist;

    .line 686
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteArtist;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 689
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 699
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 692
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "deleteFavoriteArtist : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 697
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "deleteFavoriteArtist"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public deleteFavoriteMilkmagazine(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V
    .locals 6
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "favoriteId"    # Ljava/lang/String;

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 759
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;

    .line 760
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 763
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 773
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 766
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "deleteFavoriteArtist : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 771
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "deleteFavoriteMilkmagazine"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public deleteFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 7
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    const/4 v6, 0x0

    .line 629
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 630
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;

    .line 631
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V

    .line 634
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 644
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 637
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "deleteFavoriteSong : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v0, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 642
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "deleteFavoriteSong"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public deleteFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/TrackDetail;)V
    .locals 6
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 649
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteSong;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/TrackDetail;)V

    .line 652
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 662
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 655
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "deleteFavoriteSong : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 660
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "deleteFavoriteSong"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public getRadioService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V
    .locals 2
    .param p1, "tabControllable"    # Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .prologue
    .line 109
    const-string v0, "RadioUIWorker"

    const-string v1, "initialize : Initialize worker"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .line 111
    return-void
.end method

.method public initializeBanSongView(Landroid/view/View;)V
    .locals 8
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const-wide v6, 0x3fb47ae147ae147bL    # 0.08

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 274
    .local v2, "width":I
    const v3, 0x7f120364

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 276
    .local v0, "bansongLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 277
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 278
    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    .line 282
    return-void
.end method

.method public isIntialized()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingUndoToast()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 825
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 826
    goto :goto_0

    :cond_1
    move v0, v1

    .line 828
    goto :goto_0
.end method

.method public launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, "launchIntent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "fragMngr"    # Landroid/app/FragmentManager;
    .param p2, "dialog"    # Landroid/app/DialogFragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 190
    move-object v1, p1

    .line 191
    .local v1, "fragmentMngr":Landroid/app/FragmentManager;
    if-nez v1, :cond_0

    .line 192
    const-string v4, "RadioUIWorker"

    const-string v5, "launchDialog : Current Fragment Manager is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 196
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_4

    .line 197
    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    const-string v4, "RadioUIWorker"

    const-string v5, "launchDialog : Fragment is destroyed replace MainActivity FragmentManager"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mActivityCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mActivityCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    invoke-interface {v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;->getMainFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 213
    :goto_1
    if-eqz v1, :cond_6

    .line 214
    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/app/DialogFragment;

    .line 215
    .local v2, "showingDialog":Landroid/app/DialogFragment;
    if-nez v2, :cond_5

    .line 218
    if-eqz p4, :cond_1

    :try_start_0
    invoke-virtual {p4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    invoke-virtual {p2, p4}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 222
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 223
    .local v3, "trans":Landroid/app/FragmentTransaction;
    invoke-virtual {v3, p2, p3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 224
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v3    # "trans":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "RadioUIWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchDialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "showingDialog":Landroid/app/DialogFragment;
    :cond_2
    const-string v4, "RadioUIWorker"

    const-string v5, "launchDialog : not Initialized"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_3
    const-string v4, "RadioUIWorker"

    const-string v5, "launchDialog : Use parameter FragmentManager"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_4
    const-string v4, "RadioUIWorker"

    const-string v5, "launchDialog : JellyBean OS has no solution related to fragment destroy"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .restart local v2    # "showingDialog":Landroid/app/DialogFragment;
    :cond_5
    const-string v4, "RadioUIWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchDialog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  dialog is showing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .end local v2    # "showingDialog":Landroid/app/DialogFragment;
    :cond_6
    const-string v4, "RadioUIWorker"

    const-string v5, "launchDialog : FraqmentManager is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public moveToTab(II)V
    .locals 1
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    .line 256
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 153
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 162
    return-void
.end method

.method public playAlbum(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "albumID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 833
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 834
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 836
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 846
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 839
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "playAlbum : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 844
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "playAlbum"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "forcePlay"    # Z
    .param p6, "isMyStation"    # Z

    .prologue
    const/4 v7, 0x0

    .line 600
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZZ)V

    .line 601
    return-void
.end method

.method public playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZZ)V
    .locals 12
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "forcePlay"    # Z
    .param p6, "isMyStation"    # Z
    .param p7, "goRadioTab"    # Z
    .param p8, "isDeepLink"    # Z

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    .line 537
    .local v11, "isPrefetching":Z
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;ZZZZ)V

    .line 541
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-nez v11, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 562
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v11    # "isPrefetching":Z
    :goto_0
    return-void

    .line 544
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .restart local v11    # "isPrefetching":Z
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "playStations : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$6;

    invoke-direct {v4, p0, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$6;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;Lcom/samsung/android/app/music/common/model/Station;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 557
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v11    # "isPrefetching":Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0

    .line 560
    :cond_2
    const-string v1, "playStations"

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "stationId"    # Ljava/lang/String;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "forcePlay"    # Z
    .param p6, "isMyStation"    # Z

    .prologue
    const/4 v7, 0x0

    .line 606
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 607
    return-void
.end method

.method public playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 14
    .param p1, "fragmngr"    # Landroid/app/FragmentManager;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p3, "stationId"    # Ljava/lang/String;
    .param p4, "trackId"    # Ljava/lang/String;
    .param p5, "forcePlay"    # Z
    .param p6, "isMyStation"    # Z
    .param p7, "goRadioTab"    # Z
    .param p8, "isDeepLink"    # Z

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 568
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.radio.prefetch.manager.prefetch_is_requesting"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v13

    .line 571
    .local v13, "isPrefetching":Z
    new-instance v2, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;

    .line 572
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, p0

    move-object/from16 v5, p2

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 575
    .local v2, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    if-nez v13, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 595
    .end local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v13    # "isPrefetching":Z
    :goto_0
    return-void

    .line 578
    .restart local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .restart local v13    # "isPrefetching":Z
    :cond_0
    const-string v3, "RadioUIWorker"

    const-string v4, "playStations : Service is not active .. excute after connecting service"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$7;

    move/from16 v0, p8

    move-object/from16 v1, p3

    invoke-direct {v6, p0, v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$7;-><init>(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;ZLjava/lang/String;)V

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 590
    .end local v2    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    .end local v13    # "isPrefetching":Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0

    .line 593
    :cond_2
    const-string v3, "playStations"

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public playTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 859
    return-void
.end method

.method public playTrackList(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    const/4 v3, 0x1

    .line 862
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 863
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;

    .line 864
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 866
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 876
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 869
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string v2, "playTrackList : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 874
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    const-string v1, "playTrackList"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reInitialize(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;)V
    .locals 2
    .param p1, "activityCallback"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    .prologue
    .line 125
    const-string v0, "RadioUIWorker"

    const-string/jumbo v1, "reinitialize : Reinitialize worker"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mActivityCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    if-nez v0, :cond_0

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mActivityCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    .line 129
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 134
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    .line 137
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mContext:Ljava/lang/ref/WeakReference;

    .line 138
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mActivityCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    .line 139
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mTabControllable:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUndoToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 143
    :cond_1
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    return-void
.end method

.method public removeStationFromMyStations(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V
    .locals 8
    .param p1, "screenIDForLogging"    # Ljava/lang/String;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/FragmentManager;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "stationIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isSupportedCountry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/List;)V

    .line 310
    .local v0, "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isMilkServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->isPlayServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 323
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :goto_0
    return-void

    .line 313
    .restart local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_0
    const-string v1, "RadioUIWorker"

    const-string/jumbo v2, "removeStationFromMyStations : Service is not active .. excute after connecting service"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mUIThreadHandler:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v7, v0, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->excuteAfterConnectingService(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    .line 318
    .end local v0    # "runnable":Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->showNotSupprotCountryUI()V

    goto :goto_0

    .line 321
    :cond_2
    const-string/jumbo v1, "removeStationFromMyStations"

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->sendErrorResByNullContext(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    goto :goto_0
.end method

.method public resumeActivityCallback(Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;)V
    .locals 0
    .param p1, "activityCallback"    # Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->mActivityCallback:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    .line 122
    return-void
.end method
