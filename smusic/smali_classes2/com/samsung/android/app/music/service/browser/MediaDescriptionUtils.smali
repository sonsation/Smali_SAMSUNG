.class public final Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils;
.super Ljava/lang/Object;
.source "MediaDescriptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils$MediaBrowseExtra;,
        Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils$MediaSessionExtra;
    }
.end annotation


# static fields
.field private static final sBuilder:Landroid/media/MediaDescription$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils;->sBuilder:Landroid/media/MediaDescription$Builder;

    return-void
.end method

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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method private static getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;
    .locals 1
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils;->sBuilder:Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p0}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    .line 26
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
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.google.android.music.browse.bt_folder_type_hint"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;

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
    .line 44
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 45
    .local v2, "b":Landroid/media/MediaMetadata$Builder;
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gez v3, :cond_0

    .line 49
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v3

    .line 72
    :goto_0
    return-object v3

    .line 51
    :cond_0
    const-string v3, "android.media.metadata.MEDIA_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 52
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v2, v3, p3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 53
    const-string v3, "android.media.metadata.ALBUM"

    invoke-virtual {v2, v3, p4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 54
    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v2, v3, p5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 55
    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v2, v3, p5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 56
    const-string v3, "android.media.metadata.GENRE"

    invoke-virtual {v2, v3, p6}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 57
    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v2, v3, p7, p8}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 58
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 59
    const-string v3, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 60
    const-string v3, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 71
    :goto_1
    const-string v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v2, v3, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 72
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v3

    goto :goto_0

    .line 66
    :cond_1
    const-string v3, "android.media.metadata.DISC_NUMBER"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 69
    const-string v3, "android.media.metadata.TRACK_NUMBER"

    const-wide/16 v4, 0x1

    add-long v4, v4, p11

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    goto :goto_1
.end method

.method public static getNowPlayingItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/media/MediaDescription;
    .locals 5
    .param p0, "mediaId"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .param p5, "duration"    # J

    .prologue
    .line 31
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 32
    .local v0, "b":Landroid/media/MediaMetadata$Builder;
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 33
    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v2, p3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 34
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 35
    const-string v2, "android.media.metadata.GENRE"

    invoke-virtual {v0, v2, p4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 36
    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v0, v2, p5, p6}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "com.google.android.music.mediasession.music_metadata"

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;

    move-result-object v2

    return-object v2
.end method
