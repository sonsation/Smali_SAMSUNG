.class Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.source "EdgeRemoteViewBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgePanel"

.field private static mBinder:Landroid/os/Binder;


# instance fields
.field private final mArtworkSize:I

.field private final mCircleArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;

.field private mHasSongs:Z

.field private mIsRadio:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I

    .prologue
    .line 52
    const/16 v1, 0x67

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mHasSongs:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mArtworkSize:I

    .line 55
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;

    const v2, 0x7f0d00b0

    const v3, 0x7f0d0740

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mCircleArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;

    .line 57
    sget-object v1, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mBinder:Landroid/os/Binder;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mBinder:Landroid/os/Binder;

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setEdgeBrandName()V

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setLaunchMusicPlayerPendingIntent()V

    .line 63
    return-void
.end method

.method private convertForEdge(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 168
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mArtworkSize:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->resizeAlbumArt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 174
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mIsRadio:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mCircleArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 177
    :cond_0
    return-object p1

    .line 171
    :cond_1
    iget v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mArtworkSize:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->resizeAlbumArt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private resizeAlbumArt(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "artwork"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getSquareArtwork(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private setEdgeBrandName()V
    .locals 3

    .prologue
    .line 139
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0483

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "brandName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f12019a

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 143
    return-void

    .line 140
    .end local v0    # "brandName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a046d

    .line 141
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setFFREWPendingIntent()V
    .locals 6

    .prologue
    .line 124
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    .line 125
    .local v0, "sc":Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
    iget-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mIsRadio:Z

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getRewindDownPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getRewindUpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getForwardDownPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getForwardUpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    sget-object v2, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mBinder:Landroid/os/Binder;

    const v3, 0x7f120043

    .line 132
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getRewindDownPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getRewindUpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 131
    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    sget-object v2, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mBinder:Landroid/os/Binder;

    const v3, 0x7f12003c

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getForwardDownPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getForwardUpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 133
    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setFullPlayerLaunchPendingIntent()V
    .locals 6

    .prologue
    const/16 v5, 0x67

    .line 117
    iget-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mHasSongs:Z

    invoke-static {v1, v5}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getLaunchMusicIntent(ZI)Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1201a9

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    .line 119
    invoke-static {v3, v5, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 118
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 121
    return-void
.end method

.method private setLaunchMusicPlayerPendingIntent()V
    .locals 5

    .prologue
    const v4, 0x7f120199

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    .line 112
    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 111
    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 114
    return-void
.end method

.method private updateRadioRelatedLayout()V
    .locals 5

    .prologue
    const v4, 0x7f120198

    const v3, 0x7f120044

    const v2, 0x7f12003d

    .line 97
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mIsRadio:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201b5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201b6

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201b4

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method


# virtual methods
.method public setAlbumArt(Landroid/graphics/Bitmap;I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 4
    .param p1, "album"    # Landroid/graphics/Bitmap;
    .param p2, "viewId"    # I

    .prologue
    .line 156
    const-string v1, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAlbumArt viewId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , album - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->showProgress(Z)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    .line 159
    .local v0, "uiType":I
    if-nez v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->convertForEdge(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 162
    :cond_0
    return-object p0
.end method

.method public setCardViewPlayPendingIntent(ILcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;)V
    .locals 10
    .param p1, "viewId"    # I
    .param p2, "item"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-wide v0, p2, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "keyword":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/util/player/PlaylistPlayUtils;->getSongList(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v3

    .line 150
    .local v3, "songList":[J
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    iget-wide v8, p2, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    long-to-int v1, v8

    const/4 v5, 0x0

    move v6, v4

    .line 151
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListPendingIntent(ILjava/lang/String;[JILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v7

    .line 152
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 153
    return-void
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 3
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 67
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "title":Ljava/lang/String;
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "artist":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mHasSongs:Z

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setFullPlayerLaunchPendingIntent()V

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setPrevNextButtonEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 72
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v2

    return-object v2

    .line 69
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 4
    .param p1, "isPlaying"    # Z

    .prologue
    const v2, 0x7f120042

    const v3, 0x7f120041

    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201b2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01f0

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 86
    :goto_0
    return-object p0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201b3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01f2

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPlayerQueueType(I)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 90
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mIsRadio:Z

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->updateRadioRelatedLayout()V

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setFFREWPendingIntent()V

    .line 93
    return-object p0

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "viewId"    # I
    .param p3, "resFontSize"    # I

    .prologue
    .line 188
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v1, p3, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IFF)F

    move-result v0

    .line 191
    .local v0, "fontSize":F
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    .end local v0    # "fontSize":F
    :cond_0
    return-object p0
.end method

.method public setTextColor(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 198
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 201
    :cond_0
    return-object p0
.end method

.method public setViewBackgroundResource(II)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "drawableId"    # I

    .prologue
    .line 209
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "setBackgroundResource"

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 212
    :cond_0
    return-void
.end method

.method showProgress(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 205
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1201aa

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    return-void

    .line 205
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
