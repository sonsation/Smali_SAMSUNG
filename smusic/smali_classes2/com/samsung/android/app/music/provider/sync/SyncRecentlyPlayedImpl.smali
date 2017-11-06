.class Lcom/samsung/android/app/music/provider/sync/SyncRecentlyPlayedImpl;
.super Ljava/lang/Object;
.source "SyncRecentlyPlayedImpl.java"

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
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncRecentlyPlayedImpl;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public doSync()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/sync/SyncRecentlyPlayedImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;->doSync()V

    .line 15
    return-void
.end method
