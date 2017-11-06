.class Lcom/samsung/android/app/music/provider/sync/SyncPlaylistImpl;
.super Ljava/lang/Object;
.source "SyncPlaylistImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistImpl;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public doSync()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->doSync()V

    .line 15
    return-void
.end method
