.class final Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;
.super Landroid/os/Handler;
.source "MusicSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRequestHandler"
.end annotation


# instance fields
.field final mSyncServiceWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/provider/sync/MusicSyncService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 320
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;->mSyncServiceWeakReference:Ljava/lang/ref/WeakReference;

    .line 321
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    .line 330
    .local v0, "event":I
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;->mSyncServiceWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    .line 331
    .local v1, "service":Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
    if-nez v1, :cond_0

    .line 332
    invoke-static {}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Service object has garbage collected. So restart it."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->access$300(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;I)V

    .line 336
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->access$400(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;I)V

    goto :goto_0
.end method
