.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;
.super Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;
.source "MilkWorkerFavoriteMilkmagazine.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerFavoriteMilkPick"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteId:Ljava/lang/String;

.field private mFunction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p4, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p5, "favoriteId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 34
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->mFavoriteId:Ljava/lang/String;

    .line 35
    const-string v0, "favorite_delete"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->mFunction:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p4, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/FragmentManager;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 27
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->list:Ljava/util/List;

    .line 28
    const-string v0, "favorite_add"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->mFunction:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "MilkWorkerFavoriteMilkPick"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 73
    const-string v6, "4"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    const-string v0, "MilkWorkerFavoriteMilkPick"

    const-string v1, "[run] MilkService is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "MilkWorkerFavoriteMilkPick"

    const-string v1, "NOT_DEFINE"

    const-string v2, "not Initialized"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->mFunction:Ljava/lang/String;

    const-string v1, "favorite_delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->mFavoriteId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const-string v1, "4"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->mFavoriteId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteFavorite(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "MilkWorkerFavoriteMilkPick"

    const-string v1, "NOT_DEFINE"

    const-string v2, "Parameter Error"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->mFunction:Ljava/lang/String;

    const-string v1, "favorite_add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->list:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 61
    const-string v0, "MilkWorkerFavoriteMilkPick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[run] list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->list:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->list:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addFavoriteMilkPick(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    goto :goto_0

    .line 65
    :cond_4
    const-string v0, "MilkWorkerFavoriteMilkPick"

    const-string v1, "NOT_DEFINE"

    const-string v2, "Parameter Error"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/MilkWorkerFavoriteMilkmagazine;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
