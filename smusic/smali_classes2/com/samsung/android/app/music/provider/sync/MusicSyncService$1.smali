.class Lcom/samsung/android/app/music/provider/sync/MusicSyncService$1;
.super Ljava/lang/Object;
.source "MusicSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/provider/sync/MusicSyncService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$1;->this$0:Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$1;->this$0:Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->access$002(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$1;->this$0:Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$1;->this$0:Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;-><init>(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->access$102(Lcom/samsung/android/app/music/provider/sync/MusicSyncService;Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;)Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncRequestHandler;

    .line 131
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 132
    return-void
.end method
