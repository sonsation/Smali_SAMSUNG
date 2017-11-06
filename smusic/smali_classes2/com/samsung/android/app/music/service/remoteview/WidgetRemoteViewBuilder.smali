.class public Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.source "WidgetRemoteViewBuilder.java"


# static fields
.field private static final REMOTE_TAG:I = 0x66

.field private static final REQUEST_CODE:I = 0x8010001


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I

    .prologue
    const/16 v3, 0x66

    .line 74
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    .line 76
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getToggleShufflePendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 78
    .local v1, "shuffle":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getToggleRepeatPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 79
    .local v0, "repeat":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v3, 0x7f12058a

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 80
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v3, 0x7f12058c

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    return-void
.end method

.method private static createRemoteViewBuilder(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 56
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getInstance()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v1

    .line 57
    .local v1, "widgetHeight":I
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_1

    .line 58
    invoke-static {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->isNeedDarkColor(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const v0, 0x7f040263

    .line 70
    .local v0, "layoutResId":I
    :goto_0
    new-instance v2, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;-><init>(Landroid/content/Context;I)V

    return-object v2

    .line 61
    .end local v0    # "layoutResId":I
    :cond_0
    const v0, 0x7f040262

    .restart local v0    # "layoutResId":I
    goto :goto_0

    .line 64
    .end local v0    # "layoutResId":I
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->isNeedDarkColor(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const v0, 0x7f040265

    .restart local v0    # "layoutResId":I
    goto :goto_0

    .line 67
    .end local v0    # "layoutResId":I
    :cond_2
    const v0, 0x7f040264

    .restart local v0    # "layoutResId":I
    goto :goto_0
.end method

.method public static obtain(Landroid/content/Context;)Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getInstance()Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->getAppWidgetIds(Landroid/content/Context;)[I

    move-result-object v0

    .line 45
    .local v0, "appWidgetIds":[I
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .line 46
    .local v2, "id":I
    invoke-static {p0, v2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->createRemoteViewBuilder(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v1

    .line 47
    .local v1, "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/appwidget/HomeWidgetRemoteViewBuilderManager;->addRemoteViewBuilder(ILcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;)V

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .end local v2    # "id":I
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private setCpIconVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f12052d

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f12052e

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 154
    return-void
.end method

.method private setExtraButtonsVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f12058a

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f12058c

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 159
    return-void
.end method

.method private setUpAlbumClickIntent(Z)V
    .locals 6
    .param p1, "hasSongs"    # Z

    .prologue
    const/16 v5, 0x66

    .line 84
    invoke-static {p1, v5}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getLaunchMusicIntent(ZI)Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1201a9

    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    .line 86
    invoke-static {v3, v5, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 87
    return-void
.end method

.method private updateRepeat(I)V
    .locals 5
    .param p1, "repeat"    # I

    .prologue
    const v4, 0x7f0a01f6

    const v3, 0x7f12058d

    .line 162
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201a5

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01d9

    .line 167
    invoke-static {v1, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getStateButtonDescription(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201a4

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01ef

    .line 174
    invoke-static {v1, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getStateButtonDescription(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201a6

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01f7

    .line 181
    invoke-static {v1, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getStateButtonDescription(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateShuffle(I)V
    .locals 5
    .param p1, "shuffle"    # I

    .prologue
    const v4, 0x7f0a01fb

    const v3, 0x7f12058b

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201a7

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01fc

    .line 195
    invoke-static {v1, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getStateButtonDescription(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f0201a8

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0147

    .line 203
    invoke-static {v1, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getStateButtonDescription(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 2
    .param p1, "album"    # Landroid/graphics/Bitmap;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setLoadingProgressVisibility(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1201a9

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 125
    return-object p0
.end method

.method public bridge synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLoadingProgressVisibility(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1201aa

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    return-object p0

    .line 140
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic setLoadingProgressVisibility(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setLoadingProgressVisibility(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 14
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const/16 v13, 0x8

    const v12, 0x3f99999a    # 1.2f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 91
    iget-object v7, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 93
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isMusic()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setExtraButtonsVisibility(I)V

    .line 95
    const v7, 0x7f0a013a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "emptyText":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v10, 0x7f120196

    invoke-virtual {v7, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0, v13}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setCpIconVisibility(I)V

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v8

    :goto_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setPrevNextButtonEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 106
    const-string v7, "android.media.metadata.TITLE"

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "title":Ljava/lang/String;
    const-string v7, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "artist":Ljava/lang/String;
    if-nez v5, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v3, v8

    .line 109
    .local v3, "hasSongs":Z
    :goto_2
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setUpAlbumClickIntent(Z)V

    .line 111
    const v7, 0x7f0d028f

    .line 112
    invoke-static {v4, v7, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IFF)F

    move-result v6

    .line 113
    .local v6, "titleFontSize":F
    const v7, 0x7f0d028e

    .line 114
    invoke-static {v4, v7, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IFF)F

    move-result v1

    .line 115
    .local v1, "artistFontSize":F
    iget-object v7, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v9, 0x7f1200b8

    invoke-virtual {v7, v9, v8, v6}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 116
    iget-object v7, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v9, 0x7f120129

    invoke-virtual {v7, v9, v8, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 118
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v7

    return-object v7

    .line 99
    .end local v0    # "artist":Ljava/lang/String;
    .end local v1    # "artistFontSize":F
    .end local v2    # "emptyText":Ljava/lang/String;
    .end local v3    # "hasSongs":Z
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "titleFontSize":F
    :cond_1
    invoke-direct {p0, v13}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setExtraButtonsVisibility(I)V

    .line 100
    const v7, 0x7f0a0443

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .restart local v2    # "emptyText":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v10, 0x7f120196

    invoke-virtual {v7, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setCpIconVisibility(I)V

    goto :goto_0

    :cond_2
    move v7, v9

    .line 104
    goto :goto_1

    .restart local v0    # "artist":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    :cond_3
    move v3, v9

    .line 108
    goto :goto_2
.end method

.method public bridge synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1
    .param p1, "queueMode"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->getRepeat()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->updateRepeat(I)V

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;->getShuffle()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->updateShuffle(I)V

    .line 148
    return-object p0
.end method

.method public bridge synthetic setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->setQueueMode(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueMode;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public updateExtraButtons(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 0
    .param p1, "shuffle"    # I
    .param p2, "repeat"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->updateShuffle(I)V

    .line 134
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/remoteview/WidgetRemoteViewBuilder;->updateRepeat(I)V

    .line 135
    return-object p0
.end method
