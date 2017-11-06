.class Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;
.super Ljava/lang/Object;
.source "NotificationRemoteViewBuilder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    }
.end annotation


# instance fields
.field private final mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

.field private final mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "normalResId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3, "bigResId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;-><init>(Landroid/content/Context;ILcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-direct {v0, p1, p3, v1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;-><init>(Landroid/content/Context;ILcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 39
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;

    const v1, 0x7f0401d6

    const v2, 0x7f0401d3

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public buildBig()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumViewVisibility(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setAlbumViewVisibility(I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setAlbumViewVisibility(I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 52
    return-object p0
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 72
    return-object p0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 79
    return-object p0
.end method

.method public setBrandName()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setBrandName()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setBrandName()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 45
    return-object p0
.end method

.method public setControlPanelGravityForBigNotification(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setControlPanelGravity(I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 58
    return-object p0
.end method

.method public setIsFavorite(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "isFavorite"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setIsFavorite(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setIsFavorite(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 128
    return-object p0
.end method

.method public setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "isPrivate"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setIsPrivate(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setIsPrivate(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 121
    return-object p0
.end method

.method public setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "isRemotePlayer"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 135
    return-object p0
.end method

.method public setLoadingProgressVisibility(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setLoadingProgressVisibility(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setLoadingProgressVisibility(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 100
    return-object p0
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 65
    return-object p0
.end method

.method public setNextPrevController()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setNextPrevController()Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setNextPrevController()Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 93
    return-object p0
.end method

.method public setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "isPlaying"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 86
    return-object p0
.end method

.method public setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "queueMode"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 107
    return-object p0
.end method

.method public setSoundQuality(J)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "soundQuality"    # J

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setSoundQuality(J)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setSoundQuality(J)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 114
    return-object p0
.end method

.method public setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mNormalBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;->mBigBuilder:Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    .line 142
    return-object p0
.end method
