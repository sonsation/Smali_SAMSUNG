.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;
.super Ljava/lang/Object;
.source "MediaDescriptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils$MediaBrowseExtra;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaDescription;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 25
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p2}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getItemDescriptionWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/media/MediaDescription;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.google.android.music.browse.bt_folder_type_hint"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;

    move-result-object v1

    return-object v1
.end method

.method public static getMediaSessionMeta(JLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)Landroid/media/MediaMetadata;
    .locals 7
    .param p0, "id"    # J
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "album"    # Ljava/lang/String;
    .param p5, "artist"    # Ljava/lang/String;
    .param p6, "genre"    # Ljava/lang/String;
    .param p7, "duration"    # J
    .param p9, "listCount"    # J
    .param p11, "listPosition"    # J

    .prologue
    .line 31
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 32
    .local v2, "b":Landroid/media/MediaMetadata$Builder;
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gez v3, :cond_0

    .line 36
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v3

    .line 58
    :goto_0
    return-object v3

    .line 38
    :cond_0
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v2, v3, p3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 39
    const-string v3, "android.media.metadata.ALBUM"

    invoke-virtual {v2, v3, p4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 40
    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v2, v3, p5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 41
    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v2, v3, p5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 42
    const-string v3, "android.media.metadata.GENRE"

    invoke-virtual {v2, v3, p6}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 43
    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v2, v3, p7, p8}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 44
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 45
    const-string v3, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 46
    const-string v3, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 57
    :goto_1
    const-string v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v2, v3, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 58
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v3

    goto :goto_0

    .line 52
    :cond_1
    const-string v3, "android.media.metadata.DISC_NUMBER"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 55
    const-string v3, "android.media.metadata.TRACK_NUMBER"

    const-wide/16 v4, 0x1

    add-long v4, v4, p11

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    goto :goto_1
.end method
