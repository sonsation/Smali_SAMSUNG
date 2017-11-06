.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.super Ljava/lang/Object;
.source "MusicMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$BitmapKey;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$LongKey;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$TextKey;
    }
.end annotation


# static fields
.field private static final BITMAP_KEY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final EMPTY_MEDIA_ID:Ljava/lang/String; = "empty song"

.field public static final INVALID_ID:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-MusicMeta"

.field private static final LONG_KEY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM_ID:Ljava/lang/String; = "com.samsung.android.app.music.metadata.ALBUM_ID"

.field public static final METADATA_KEY_ARTIST_ID:Ljava/lang/String; = "com.samsung.android.app.music.metadata.ARTIST_ID"

.field public static final METADATA_KEY_ATTRIBUTE:Ljava/lang/String; = "com.samsung.android.app.music.metadata.ATTRIBUTE"

.field public static final METADATA_KEY_CHANNEL_NAME:Ljava/lang/String; = "com.samsung.android.app.music.metadata.CHANNEL_NAME"

.field public static final METADATA_KEY_CP_ATTRS:Ljava/lang/String; = "com.samsung.android.app.music.metadata.CP_ATTRS"

.field public static final METADATA_KEY_EXTRA_MUSIC_METADATA:Ljava/lang/String; = "com.google.android.music.mediasession.music_metadata"

.field public static final METADATA_KEY_EXTRA_MUSIC_METADATA_OTHERS:Ljava/lang/String; = "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

.field public static final METADATA_KEY_PLAYING_URI:Ljava/lang/String; = "com.samsung.android.app.music.metadata.PLAYING_URI"

.field public static final METADATA_KEY_PLAY_DIRECTION:Ljava/lang/String; = "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

.field public static final METADATA_KEY_QUEUE_POSITION:Ljava/lang/String; = "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

.field public static final METADATA_KEY_QUEUE_SIZE:Ljava/lang/String; = "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

.field public static final METADATA_KEY_SOUND_QUALITY_DATA:Ljava/lang/String; = "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

.field public static final METADATA_KEY_SOURCE_ID:Ljava/lang/String; = "com.samsung.android.app.music.metadata.SOURCE_ID"

.field private static final TEXT_KEY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMeta:Landroid/media/MediaMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->BITMAP_KEY:Ljava/util/List;

    .line 179
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.TITLE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.ALBUM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.GENRE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "com.samsung.android.app.music.metadata.PLAYING_URI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.COMPILATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    const-string v1, "com.samsung.android.app.music.metadata.CHANNEL_NAME"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.DURATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    const-string v1, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    const-string v1, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    const-string v1, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    const-string v1, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    const-string v1, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    const-string v1, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->BITMAP_KEY:Ljava/util/List;

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/media/MediaMetadata;)V
    .locals 0
    .param p1, "meta"    # Landroid/media/MediaMetadata;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaMetadata;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/MediaMetadata;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 3
    .param p0, "m"    # Landroid/media/MediaMetadata;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 451
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, p0}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 452
    .local v0, "b":Landroid/media/MediaMetadata$Builder;
    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 453
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->obtainMusicMeta(Landroid/media/MediaMetadata$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    return-object v1
.end method

.method public static changeAttribute(Landroid/media/MediaMetadata;Ljava/lang/String;J)Landroid/media/MediaMetadata;
    .locals 2
    .param p0, "m"    # Landroid/media/MediaMetadata;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 435
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, p0}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 436
    .local v0, "b":Landroid/media/MediaMetadata$Builder;
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 437
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    return-object v1
.end method

.method public static changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2
    .param p0, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 429
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 430
    .local v0, "b":Landroid/media/MediaMetadata$Builder;
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 431
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->obtainMusicMeta(Landroid/media/MediaMetadata$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    return-object v1
.end method

.method public static changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2
    .param p0, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 416
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 417
    .local v0, "b":Landroid/media/MediaMetadata$Builder;
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 418
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->obtainMusicMeta(Landroid/media/MediaMetadata$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    return-object v1
.end method

.method public static convertAudioId(Ljava/lang/String;)J
    .locals 6
    .param p0, "audioIdStr"    # Ljava/lang/String;

    .prologue
    .line 400
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 405
    :goto_0
    return-wide v0

    .line 401
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "SMUSIC-MusicMeta"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertAudioId but audio id is abnormal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getMetaString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    if-nez v2, :cond_1

    .line 496
    const-string v2, "No data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    .local v1, "key":Ljava/lang/String;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->LONG_KEY:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 505
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    invoke-virtual {v3, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 506
    :cond_3
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->TEXT_KEY:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 507
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    invoke-virtual {v3, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static obtainMusicMeta(Landroid/media/MediaMetadata$Builder;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2
    .param p0, "builder"    # Landroid/media/MediaMetadata$Builder;

    .prologue
    .line 515
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/media/MediaMetadata;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 489
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v0, :cond_1

    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .end local p1    # "obj":Ljava/lang/Object;
    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 490
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaId()J
    .locals 2

    .prologue
    .line 215
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method public getQueueType()I
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdvertisement()Z
    .locals 1

    .prologue
    .line 251
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public isCeleb()Z
    .locals 1

    .prologue
    .line 255
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 2

    .prologue
    .line 230
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v0

    return v0
.end method

.method public isMusic()Z
    .locals 1

    .prologue
    .line 243
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 2

    .prologue
    .line 226
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isOnline(I)Z

    move-result v0

    return v0
.end method

.method public isPrevNextControllable()Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 263
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$Content;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public isRadio()Z
    .locals 1

    .prologue
    .line 247
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MajorCategory;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public isSong()Z
    .locals 1

    .prologue
    .line 259
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Attribute$MinorCategory;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->mMeta:Landroid/media/MediaMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 464
    return-void
.end method
