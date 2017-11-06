.class final Lcom/samsung/android/app/music/provider/sync/MusicSyncService$SyncImplFactory;
.super Ljava/lang/Object;
.source "MusicSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncImplFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance(Landroid/content/Context;I)Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Syncable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncEvent"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 103
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 81
    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 83
    :pswitch_2
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncInitProcessImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 85
    :pswitch_3
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 87
    :pswitch_4
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncLocalContentsImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :pswitch_5
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 91
    :pswitch_6
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistSyncUpImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistSyncUpImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 93
    :pswitch_7
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistSyncDownImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistSyncDownImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :pswitch_8
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncMostPlayedImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncMostPlayedImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 97
    :pswitch_9
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncRecentlyPlayedImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncRecentlyPlayedImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 99
    :pswitch_a
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmTracksImpl;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 101
    :pswitch_b
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/sync/SyncHeartContentsImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
