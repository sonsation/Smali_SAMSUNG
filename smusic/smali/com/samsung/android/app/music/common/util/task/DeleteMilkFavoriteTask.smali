.class public Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "DeleteMilkFavoriteTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeleteMilkFavoriteTask"


# instance fields
.field private albumIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private artistIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private milkmagazineIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p5, "finish"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "albumIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "artistIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "milkmagazineIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->albumIds:Ljava/util/ArrayList;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->artistIds:Ljava/util/ArrayList;

    .line 35
    iput-object p4, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->milkmagazineIds:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 60
    const-string v0, "DeleteMilkFavoriteTask"

    const-string v1, "doInBackground start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->albumIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const-string v1, "2"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->albumIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteFavorite(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/util/ArrayList;)I

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->artistIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const-string v1, "3"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->artistIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteFavorite(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/util/ArrayList;)I

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->milkmagazineIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const-string v1, "4"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->milkmagazineIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteFavorite(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/util/ArrayList;)I

    .line 74
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 91
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->onPostExecute(Ljava/lang/Integer;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkFavoriteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 46
    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method
