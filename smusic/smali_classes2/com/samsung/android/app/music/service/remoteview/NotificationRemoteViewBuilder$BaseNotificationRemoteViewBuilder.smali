.class Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
.super Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
.source "NotificationRemoteViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseNotificationRemoteViewBuilder"
.end annotation


# static fields
.field private static final REMOTE_TAG:I = 0x65


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I

    .prologue
    const v8, 0x7f1204d7

    const/16 v7, 0x65

    const v6, 0x7f11019e

    const/4 v5, 0x0

    .line 159
    invoke-direct {p0, p1, p2, v7}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;-><init>(Landroid/content/Context;II)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    .local v0, "res":Landroid/content/res/Resources;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_NOTIFICATION_BLACK_THEME:Z

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1204d3

    const-string/jumbo v3, "setBackgroundColor"

    const v4, 0x7f11019c

    .line 164
    invoke-static {v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 163
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1200b8

    const v3, 0x7f1101a0

    .line 166
    invoke-static {v0, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f120129

    const v3, 0x7f11019b

    .line 168
    invoke-static {v0, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f120044

    const-string/jumbo v3, "setColorFilter"

    .line 170
    invoke-static {v0, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 169
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f120042

    const-string/jumbo v3, "setColorFilter"

    .line 172
    invoke-static {v0, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 171
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f12003d

    const-string/jumbo v3, "setColorFilter"

    .line 174
    invoke-static {v0, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 173
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v2, 0x7f1204d9

    const-string/jumbo v3, "setColorFilter"

    .line 176
    invoke-static {v0, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 175
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    .line 180
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getExitPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 182
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f0a01db

    .line 183
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_1

    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/high16 v2, 0x7f120000

    const v3, 0x7f0a0483

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$1;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method setAlbumViewVisibility(I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 258
    const v0, 0x7f1204da

    invoke-super {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 259
    return-object p0
.end method

.method public setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 2
    .param p1, "album"    # Landroid/graphics/Bitmap;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f1204d4

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 215
    return-object p0
.end method

.method public bridge synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method setBrandName()Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 6

    .prologue
    const/high16 v5, 0x7f120000

    .line 247
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0483

    .line 248
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "brandName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInteractive(Landroid/content/Context;)Z

    move-result v1

    .line 253
    .local v1, "isInteractive":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string/jumbo v4, "setSelected"

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v5, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 254
    return-object p0

    .line 248
    .end local v0    # "brandName":Ljava/lang/String;
    .end local v1    # "isInteractive":Z
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f0a046d

    .line 249
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    .restart local v0    # "brandName":Ljava/lang/String;
    .restart local v1    # "isInteractive":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method setControlPanelGravity(I)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 263
    const v0, 0x7f120259

    invoke-super {p0, v0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setViewGravity(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 264
    return-object p0
.end method

.method public setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 10
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const v9, 0x7f120129

    const v8, 0x7f1200b8

    const v7, 0x7f0a0219

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 193
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "title":Ljava/lang/String;
    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "artist":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 197
    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    const-string v6, "<unknown>"

    .line 198
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .end local v0    # "artist":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInteractive(Landroid/content/Context;)Z

    move-result v1

    .line 205
    .local v1, "isInteractive":Z
    iget-object v6, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string/jumbo v7, "setSelected"

    if-eqz v1, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v8, v7, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 206
    iget-object v3, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const-string/jumbo v6, "setSelected"

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v3, v9, v6, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 208
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setPrevNextButtonEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 209
    return-object p0

    :cond_3
    move v3, v5

    .line 205
    goto :goto_0

    :cond_4
    move v4, v5

    .line 206
    goto :goto_1
.end method

.method public bridge synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 6
    .param p1, "isPlaying"    # Z

    .prologue
    const v5, 0x7f120041

    const v4, 0x7f0a01f2

    const v3, 0x7f0a01f0

    const v2, 0x7f120042

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f020245

    .line 222
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 226
    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 234
    :goto_0
    return-object p0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const v1, 0x7f020246

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mContext:Landroid/content/Context;

    .line 232
    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->mRemoteView:Landroid/widget/RemoteViews;

    const/high16 v2, 0x7f120000

    const-string/jumbo v3, "setSelected"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 242
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 243
    return-object p0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/music/service/remoteview/NotificationRemoteViewBuilder$BaseNotificationRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method
