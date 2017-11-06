.class Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;
.super Ljava/lang/Object;
.source "SyncMdrmTracksImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mForceSync:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;-><init>(Landroid/content/Context;Z)V

    .line 12
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceSync"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->mContext:Landroid/content/Context;

    .line 16
    iput-boolean p2, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->mForceSync:Z

    .line 17
    return-void
.end method


# virtual methods
.method public doSync()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->init(Landroid/content/Context;)V

    .line 22
    iget-boolean v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->mForceSync:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->forceToSyncMdrmContents(Landroid/content/Context;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->ACCEPTABLE_ERRORS_FULL_SYNC:[I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->syncMdrmContents(Landroid/content/Context;[I)V

    goto :goto_0
.end method
