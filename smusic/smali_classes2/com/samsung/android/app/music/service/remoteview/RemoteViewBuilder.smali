.class public Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.super Ljava/lang/Object;
.source "RemoteViewBuilder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;


# static fields
.field private static final ALPHA_DIM:I = 0x66

.field private static final ALPHA_NORMAL:I = 0xff

.field static final METHOD_SET_BACKGROUND_COLOR:Ljava/lang/String; = "setBackgroundColor"

.field static final METHOD_SET_COLOR_FILTER:Ljava/lang/String; = "setColorFilter"

.field private static final METHOD_SET_ENABLED:Ljava/lang/String; = "setEnabled"

.field private static final METHOD_SET_GRAVITY:Ljava/lang/String; = "setGravity"

.field private static final METHOD_SET_IMAGE_ALPHA:Ljava/lang/String; = "setImageAlpha"

.field static final METHOD_SET_SELECTED:Ljava/lang/String; = "setSelected"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mRemoteView:Landroid/widget/RemoteViews;

.field private final mTag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .param p3, "tag"    # I

    .prologue
    const v5, 0x7f120043

    const v4, 0x7f12003c

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 75
    iput p3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mTag:I

    .line 76
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    .line 77
    .local v0, "sc":Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f120041

    iget v3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mTag:I

    .line 79
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePausePendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mTag:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getPrevPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mTag:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getNextPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01f4

    .line 83
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01ed

    .line 85
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 86
    return-void
.end method


# virtual methods
.method public build()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 3
    .param p1, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const v2, 0x7f1201a9

    .line 135
    if-nez p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    sget v1, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 140
    :goto_0
    return-object p0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(IZ)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2
    .param p1, "viewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "enabled"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "setEnabled"

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 275
    return-object p0
.end method

.method public setImageAlpha(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2
    .param p1, "viewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "value"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "setImageAlpha"

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 286
    return-object p0
.end method

.method public setIsFavorite(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0
    .param p1, "isFavorite"    # Z

    .prologue
    .line 237
    return-object p0
.end method

.method public bridge synthetic setIsFavorite(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setIsFavorite(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIsPrivate(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 3
    .param p1, "isPrivate"    # Z

    .prologue
    .line 229
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1201ab

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 230
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 231
    return-object p0

    .line 229
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setIsPrivate(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIsRemotePlayer(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 242
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1204d5

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 244
    return-object p0

    .line 242
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLoadingProgressVisibility(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 7
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const v6, 0x7f1200b8

    const v5, 0x7f120129

    .line 114
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "title":Ljava/lang/String;
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "artist":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    :goto_0
    return-object p0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/4 v3, 0x4

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method public bridge synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNextPrevController()Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f12003c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f120043

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 178
    return-object p0
.end method

.method public bridge synthetic setNextPrevController()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setNextPrevController()Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 4
    .param p1, "isPlaying"    # Z

    .prologue
    const v2, 0x7f120042

    const v3, 0x7f120041

    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0203c9

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01f0

    .line 159
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 165
    :goto_0
    return-object p0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0203ca

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01f2

    .line 163
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPrevNextButtonEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    .line 189
    .local v0, "alpha":I
    :goto_0
    const v1, 0x7f120044

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setImageAlpha(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 190
    const v1, 0x7f12003d

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setImageAlpha(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 191
    const v1, 0x7f120043

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setEnabled(IZ)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 192
    const v1, 0x7f12003c

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setEnabled(IZ)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 193
    return-object p0

    .line 188
    .end local v0    # "alpha":I
    :cond_0
    const/16 v0, 0x66

    goto :goto_0
.end method

.method public setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0
    .param p1, "queueMode"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    .prologue
    .line 213
    return-object p0
.end method

.method public bridge synthetic setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSoundQuality(J)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0
    .param p1, "soundQuality"    # J

    .prologue
    .line 219
    return-object p0
.end method

.method public bridge synthetic setSoundQuality(J)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setSoundQuality(J)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v4, 0x7f1200b8

    const-string/jumbo v5, "setSelected"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v3, 0x7f120129

    const-string/jumbo v4, "setSelected"

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 254
    return-object p0

    :cond_0
    move v0, v2

    .line 252
    goto :goto_0

    :cond_1
    move v1, v2

    .line 253
    goto :goto_1
.end method

.method public bridge synthetic setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setViewGravity(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string/jumbo v1, "setGravity"

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 264
    return-object p0
.end method

.method public setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 259
    return-object p0
.end method

.method public updateExtraButtons(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0
    .param p1, "shuffle"    # I
    .param p2, "repeat"    # I

    .prologue
    .line 208
    return-object p0
.end method
