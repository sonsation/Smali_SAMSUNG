.class Lcom/samsung/android/app/music/provider/sync/SyncPlaylistSyncDownImpl;
.super Ljava/lang/Object;
.source "SyncPlaylistSyncDownImpl.java"

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
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistSyncDownImpl;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public doSync()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistSyncDownImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->syncDown(Landroid/content/Context;)V

    .line 15
    return-void
.end method
