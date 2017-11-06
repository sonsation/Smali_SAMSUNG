.class public abstract Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "AbsMilkWorkerFavorite.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;


# static fields
.field protected static final FAVORITE_ADD:Ljava/lang/String; = "favorite_add"

.field protected static final FAVORITE_DELETE:Ljava/lang/String; = "favorite_delete"

.field private static final LOG_TAG:Ljava/lang/String; = "AbsMilkWorkerFavorite"

.field protected static final MAX_COUNT:I = 0x3e8


# instance fields
.field protected final MAX_ERROR_CODE:I

.field protected fragmngr:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmngr"    # Landroid/app/FragmentManager;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p4, "workerCallback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .prologue
    .line 30
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 24
    const/16 v0, 0x2261

    iput v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->MAX_ERROR_CODE:I

    .line 31
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->fragmngr:Landroid/app/FragmentManager;

    .line 32
    return-void
.end method


# virtual methods
.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;
    .param p6, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 36
    if-nez p3, :cond_0

    .line 37
    const-string v3, "AbsMilkWorkerFavorite"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onApiHandled] favorite : Add success reqType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v8, v6, v6, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 39
    :cond_0
    if-ne p3, v8, :cond_3

    .line 40
    if-eqz p5, :cond_1

    .line 41
    array-length v3, p5

    if-lez v3, :cond_1

    .line 42
    aget-object v3, p5, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 43
    .local v2, "errorCode":I
    const-string v3, "AbsMilkWorkerFavorite"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onApiHandled] favorite : Add fail errorCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/16 v3, 0x2261

    if-ne v2, v3, :cond_1

    .line 45
    const/16 v3, 0x3e8

    .line 46
    invoke-static {p6, v3}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getInstance(Ljava/lang/String;I)Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    move-result-object v0

    .line 47
    .local v0, "dialog":Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;
    if-eqz v0, :cond_1

    .line 48
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v3, :cond_2

    .line 49
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->fragmngr:Landroid/app/FragmentManager;

    const-string v5, "addFavoriteError"

    invoke-interface {v3, v4, v0, v5, v6}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->launchDialog(Landroid/app/FragmentManager;Landroid/app/DialogFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    .end local v0    # "dialog":Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;
    .end local v2    # "errorCode":I
    :cond_1
    :goto_1
    const-string v3, "AbsMilkWorkerFavorite"

    const-string v4, "ServerErrorType"

    const-string v5, ""

    invoke-virtual {p0, v7, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .restart local v0    # "dialog":Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;
    .restart local v2    # "errorCode":I
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->fragmngr:Landroid/app/FragmentManager;

    const-string v4, "addFavoriteError"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v0    # "dialog":Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "errorCode":I
    :cond_3
    const-string v3, "AbsMilkWorkerFavorite"

    const-string v4, "ServerErrorType"

    const-string v5, ""

    invoke-virtual {p0, v7, v3, v4, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/favorite/AbsMilkWorkerFavorite;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
