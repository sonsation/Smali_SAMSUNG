.class Lcom/samsung/android/app/music/provider/sync/SyncPreRestoreContentsImpl;
.super Ljava/lang/Object;
.source "SyncPreRestoreContentsImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/SyncPreRestoreContentsImpl;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public doSync()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncPreRestoreContentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->preRestore(Landroid/content/Context;)V

    .line 17
    return-void
.end method
