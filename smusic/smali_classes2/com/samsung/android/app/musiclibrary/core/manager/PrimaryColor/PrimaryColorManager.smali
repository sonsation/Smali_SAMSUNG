.class public Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "PrimaryColorManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastPrimaryColor:I

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mOnGetTintInfo:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

.field private final mPrimaryColorCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryColorChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mResPolicy:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;

.field private mStaticThumbnailId:J

.field private mStaticThumbnailUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p3, "resPolicy"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 31
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorCache:Landroid/util/LruCache;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorChangedListeners:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailUri:Landroid/net/Uri;

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailId:J

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mLastPrimaryColor:I

    .line 114
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mOnGetTintInfo:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mContext:Landroid/content/Context;

    .line 51
    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 52
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mResPolicy:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;

    .line 54
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mLastPrimaryColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->invokePrimaryColorChangedListener(I)V

    return-void
.end method

.method private invokePrimaryColorChangedListener(I)V
    .locals 3
    .param p1, "primaryColor"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 126
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;->onPrimaryColorChanged(I)V

    goto :goto_0

    .line 128
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mLastPrimaryColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 64
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mLastPrimaryColor:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;->onPrimaryColorChanged(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 164
    return-void
.end method

.method public getLastPrimaryColor()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mLastPrimaryColor:I

    return v0
.end method

.method public getPrimaryColor(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 8
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "albumId"    # J
    .param p4, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorCache:Landroid/util/LruCache;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 78
    .local v0, "primaryColor":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;->onPrimaryColorChanged(I)V

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mResPolicy:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;

    .line 82
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;->getImageSizeResId()I

    move-result v6

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$1;

    invoke-direct {v7, p0, p4}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    goto :goto_0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->release()V

    .line 59
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 158
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 12
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 132
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailId:J

    const-wide/16 v10, -0x1

    cmp-long v1, v6, v10

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailId:J

    .line 134
    .local v4, "thumbnailId":J
    :goto_0
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 135
    .local v8, "cpAttrs":J
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailUri:Landroid/net/Uri;

    .line 137
    .local v3, "baseUri":Landroid/net/Uri;
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorCache:Landroid/util/LruCache;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 138
    .local v0, "primaryColor":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->invokePrimaryColorChangedListener(I)V

    .line 145
    :goto_2
    return-void

    .line 132
    .end local v0    # "primaryColor":Ljava/lang/Integer;
    .end local v3    # "baseUri":Landroid/net/Uri;
    .end local v4    # "thumbnailId":J
    .end local v8    # "cpAttrs":J
    :cond_0
    const-string v1, "com.samsung.android.app.music.metadata.ALBUM_ID"

    .line 133
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 135
    .restart local v4    # "thumbnailId":J
    .restart local v8    # "cpAttrs":J
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mResPolicy:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;

    long-to-int v2, v8

    .line 136
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;->convertCpAttrsToUri(I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 141
    .restart local v0    # "primaryColor":Ljava/lang/Integer;
    .restart local v3    # "baseUri":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mResPolicy:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;

    .line 142
    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorResPolicy;->getImageSizeResId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mOnGetTintInfo:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    goto :goto_2
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 149
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method public removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mPrimaryColorChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public setStaticThumbnailId(J)V
    .locals 1
    .param p1, "thumbnailId"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailId:J

    .line 101
    return-void
.end method

.method public setStaticThumbnailId(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "baseThumbnailUri"    # Landroid/net/Uri;
    .param p2, "thumbnailId"    # J

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailUri:Landroid/net/Uri;

    .line 106
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/PrimaryColorManager;->mStaticThumbnailId:J

    .line 107
    return-void
.end method
