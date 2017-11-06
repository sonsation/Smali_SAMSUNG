.class public Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
.source "GLAlbumArtAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;,
        Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagHolder;,
        Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$LyricsHolder;,
        Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$OnLyricLoadFinished;
    }
.end annotation


# static fields
.field private static final FULL_PLAYER_UHQA_UPSCALER_TAG_RESOURCE_ID:I = 0x7f04008d

.field private static final LOG_TAG:Ljava/lang/String; = "GLAlbumArtAdapter"

.field private static final LYRICS_RESOURCE_ID:I = 0x7f04007d

.field private static final SYNCED_LYRICS_RESOURCE_ID:I = 0x7f04008a


# instance fields
.field private final mAlbumIdColumnIdx:I

.field private final mAlbumSize:F

.field private final mAlbumUris:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlbumUrisLock:Ljava/lang/Object;

.field private mArtistColumnIdx:I

.field private final mAudioIdIdx:I

.field private final mBaseUri:Landroid/net/Uri;

.field private final mCpAttrs:I

.field private final mCpAttrsIdx:I

.field private final mIsPrivateColumnIdx:I

.field private mLyricLoadFinishedListener:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$OnLyricLoadFinished;

.field private mLyricsDx:F

.field private mLyricsDy:F

.field private mLyricsIconEnabled:Z

.field private mOnLyricsLoaded:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

.field private final mPrivateIconDx:I

.field private final mPrivateIconDy:I

.field private final mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final mSoundQualityDataIdx:I

.field private final mSoundQualityTagCallbacks:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;

.field private mTitleColumnIdx:I

.field private final mUhqSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

.field private final mUiType:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;III)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "dxDimens"    # I
    .param p4, "dyDimens"    # I
    .param p5, "cpAttrs"    # I

    .prologue
    const/4 v3, 0x1

    .line 137
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;-><init>(Landroid/database/Cursor;)V

    .line 45
    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricsIconEnabled:Z

    .line 89
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumUris:Landroid/util/SparseArray;

    .line 91
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumUrisLock:Ljava/lang/Object;

    .line 97
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mSoundQualityTagCallbacks:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;

    .line 100
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mOnLyricsLoaded:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

    .line 138
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->invalidateCache()V

    .line 139
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mUiType:I

    .line 140
    iput p5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCpAttrs:I

    .line 141
    invoke-static {p5}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mBaseUri:Landroid/net/Uri;

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->hasKeyboardCover(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const v2, 0x7f0d0107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    .line 151
    :goto_0
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mPrivateIconDx:I

    .line 152
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mPrivateIconDy:I

    .line 153
    const-string v2, "audio_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAudioIdIdx:I

    .line 154
    const-string v2, "album_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumIdColumnIdx:I

    .line 155
    const-string v2, "is_secretbox"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mIsPrivateColumnIdx:I

    .line 156
    const-string/jumbo v2, "sound_quality_data"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mSoundQualityDataIdx:I

    .line 157
    const-string v2, "cp_attrs"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCpAttrsIdx:I

    .line 159
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mUiType:I

    if-ne v2, v3, :cond_0

    .line 160
    const-string/jumbo v2, "title"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mTitleColumnIdx:I

    .line 161
    const-string v2, "artist"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mArtistColumnIdx:I

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->supportUpscalerInArtwork(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mUhqSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    .line 169
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 170
    return-void

    .line 148
    :cond_1
    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    goto :goto_0

    .line 166
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mUhqSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->fireOnLyricsLoaded(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;JI)V

    return-void
.end method

.method private applyViewSize(F)F
    .locals 2
    .param p1, "size"    # F

    .prologue
    const/4 v0, 0x0

    .line 366
    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 367
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    sub-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 369
    :cond_0
    return v0
.end method

.method private fireOnLyricsLoaded(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;JI)V
    .locals 2
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p2, "audioId"    # J
    .param p4, "shuffledPosition"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricLoadFinishedListener:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$OnLyricLoadFinished;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricLoadFinishedListener:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$OnLyricLoadFinished;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$OnLyricLoadFinished;->onLyricLoadFinished(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;JI)V

    .line 123
    :cond_0
    return-void
.end method

.method private getSoundQualityTagPosition(Landroid/content/Context;Landroid/graphics/Bitmap;)[F
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 373
    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 374
    .local v2, "tagDistanceWidth":F
    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v1, v5, v6

    .line 378
    .local v1, "tagDistanceHeight":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 379
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_0

    .line 380
    neg-float v5, v2

    div-float v3, v5, v7

    .line 384
    .local v3, "tagDx":F
    :goto_0
    div-float v4, v1, v7

    .line 385
    .local v4, "tagDy":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    return-object v5

    .line 382
    .end local v3    # "tagDx":F
    .end local v4    # "tagDy":F
    :cond_0
    div-float v3, v2, v7

    .restart local v3    # "tagDx":F
    goto :goto_0
.end method

.method private getUhqTagPosition(Landroid/content/Context;Landroid/graphics/Bitmap;I)[F
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "soundQualityTagHeight"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 389
    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 390
    .local v2, "uhqDistanceWidth":F
    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v1, v5, v6

    .line 394
    .local v1, "uhqDistanceHeight":F
    if-lez p3, :cond_0

    .line 395
    div-float v5, v1, v7

    int-to-float v6, p3

    sub-float v4, v5, v6

    .line 399
    .local v4, "uhqDy":F
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 400
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_1

    .line 401
    neg-float v5, v2

    div-float v3, v5, v7

    .line 405
    .local v3, "uhqDx":F
    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    return-object v5

    .line 397
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v3    # "uhqDx":F
    .end local v4    # "uhqDy":F
    :cond_0
    div-float v4, v1, v7

    .restart local v4    # "uhqDy":F
    goto :goto_0

    .line 403
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    div-float v3, v2, v7

    .restart local v3    # "uhqDx":F
    goto :goto_1
.end method

.method private setLyricsPosition(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSyncedLyric"    # Z

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 179
    if-eqz p2, :cond_1

    .line 180
    const v1, 0x7f04008a

    .line 184
    .local v1, "iconRes":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getStaticBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 185
    .local v4, "lyricsIcon":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 186
    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 187
    .local v3, "lyricsDistanceWidth":F
    iget v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumSize:F

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 189
    .local v2, "lyricsDistanceHeight":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 190
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_2

    .line 191
    div-float v5, v3, v7

    iput v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricsDx:F

    .line 195
    :goto_1
    div-float v5, v2, v7

    iput v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricsDy:F

    .line 197
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "lyricsDistanceHeight":F
    .end local v3    # "lyricsDistanceWidth":F
    :cond_0
    return-void

    .line 182
    .end local v1    # "iconRes":I
    .end local v4    # "lyricsIcon":Landroid/graphics/Bitmap;
    :cond_1
    const v1, 0x7f04007d

    .restart local v1    # "iconRes":I
    goto :goto_0

    .line 193
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "lyricsDistanceHeight":F
    .restart local v3    # "lyricsDistanceWidth":F
    .restart local v4    # "lyricsIcon":Landroid/graphics/Bitmap;
    :cond_2
    neg-float v5, v3

    div-float/2addr v5, v7

    iput v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricsDx:F

    goto :goto_1
.end method


# virtual methods
.method protected bindView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 248
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mUiType:I

    if-nez v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;

    .line 253
    .local v0, "vh":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;
    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;

    .end local v0    # "vh":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;
    invoke-direct {v0, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 255
    .restart local v0    # "vh":Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 257
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;->access$100(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mTitleColumnIdx:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mArtistColumnIdx:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method clearAlbumUrisCache()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "GLAlbumArtAdapter"

    const-string v1, "clearAlbumUrisCache"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumUrisLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumUris:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 207
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAlbArtUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I

    .prologue
    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumUrisLock:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumUris:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 219
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->checkUpdateCursor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCpAttrsIdx:I

    if-ltz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCpAttrsIdx:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumIdColumnIdx:I

    .line 223
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 222
    invoke-static {v1, v4, v5}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getAlbumUri(IJ)Landroid/net/Uri;

    move-result-object v0

    .line 228
    :goto_0
    const-string v1, "GLAlbumArtAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAlbArtUri reload position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumUris:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    const-string v1, "GLAlbumArtAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbArtUri position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-object v0

    .line 225
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mBaseUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAlbumIdColumnIdx:I

    .line 226
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 232
    .end local v0    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getMarkerViewCount()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method setLyricLoadFinishedListener(Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$OnLyricLoadFinished;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$OnLyricLoadFinished;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricLoadFinishedListener:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$OnLyricLoadFinished;

    .line 174
    return-void
.end method

.method setLyricsIconEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricsIconEnabled:Z

    .line 201
    return-void
.end method

.method protected updateMarkerViews(Landroid/content/Context;Landroid/database/Cursor;[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "markers"    # [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;
    .param p4, "count"    # I
    .param p5, "viewWidth"    # F
    .param p6, "viewHeight"    # F

    .prologue
    .line 264
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v4, v0

    if-nez v4, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mIsPrivateColumnIdx:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_6

    const/4 v12, 0x1

    .line 268
    .local v12, "isPrivate":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .local v6, "audioId":J
    move-object/from16 v17, p2

    .line 269
    check-cast v17, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 270
    .local v17, "nc":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->isShuffleEnabled()Z

    move-result v13

    .line 273
    .local v13, "isShuffleEnabled":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCpAttrsIdx:I

    if-ltz v4, :cond_7

    .line 274
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCpAttrsIdx:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 278
    .local v5, "cpAttrs":I
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mOnLyricsLoaded:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;

    new-instance v9, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$LyricsHolder;

    .line 279
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v26

    move/from16 v0, v26

    invoke-direct {v9, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$LyricsHolder;-><init>(I)V

    .line 278
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->getLyrics(IJLcom/samsung/android/app/music/common/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v16

    .line 281
    .local v16, "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    const/4 v14, 0x0

    .line 282
    .local v14, "isSyncedLyric":Z
    const/16 v23, 0x0

    .line 283
    .local v23, "strLyrics":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 284
    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->toString()Ljava/lang/String;

    move-result-object v23

    .line 285
    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v14

    .line 288
    :cond_2
    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    const/4 v10, 0x1

    .line 289
    .local v10, "hasLyrics":Z
    :goto_3
    if-eqz v12, :cond_9

    .line 290
    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    move-result-object v8

    const v9, 0x7f040083

    .line 291
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getStaticBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 292
    const/4 v4, 0x0

    aget-object v4, p3, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mPrivateIconDx:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->applyViewSize(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->x:F

    .line 293
    const/4 v4, 0x0

    aget-object v4, p3, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mPrivateIconDy:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->applyViewSize(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->y:F

    .line 298
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricsIconEnabled:Z

    if-eqz v4, :cond_b

    if-eqz v10, :cond_b

    .line 300
    if-eqz v14, :cond_a

    .line 301
    const v15, 0x7f04008a

    .line 305
    .local v15, "lyricIconRes":I
    :goto_5
    const/4 v4, 0x1

    aget-object v4, p3, v4

    .line 306
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v15}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getStaticBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->setLyricsPosition(Landroid/content/Context;Z)V

    .line 308
    const/4 v4, 0x1

    aget-object v4, p3, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricsDx:F

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->applyViewSize(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->x:F

    .line 309
    const/4 v4, 0x1

    aget-object v4, p3, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mLyricsDy:F

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->applyViewSize(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->y:F

    .line 314
    .end local v15    # "lyricIconRes":I
    :goto_6
    const/4 v11, 0x0

    .line 315
    .local v11, "hasTag":Z
    invoke-static {v5}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mSoundQualityTagCallbacks:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;

    const-string v8, "AAC+"

    invoke-virtual {v4, v8}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->updateStreaming(Ljava/lang/String;)V

    .line 318
    const/4 v11, 0x1

    .line 320
    :cond_3
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    if-eqz v4, :cond_4

    if-nez v11, :cond_4

    .line 321
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mSoundQualityDataIdx:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 322
    .local v20, "soundQualityData":J
    invoke-static/range {v20 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->isHighQuality(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mSoundQualityTagCallbacks:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;->update(J)V

    .line 324
    const/4 v11, 0x1

    .line 328
    .end local v20    # "soundQualityData":J
    :cond_4
    const/16 v19, 0x0

    .line 329
    .local v19, "soundQualityTagHeight":I
    if-eqz v11, :cond_5

    .line 330
    const/4 v4, 0x2

    aget-object v4, p3, v4

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    move-result-object v8

    const v9, 0x7f040089

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mSoundQualityTagCallbacks:Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter$SoundQualityTagCallbacks;

    move-object/from16 v26, v0

    .line 331
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v9, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getDynamicBitmap(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache$DynamicBitmapCallbacks;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 333
    const/4 v4, 0x2

    aget-object v4, p3, v4

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 334
    const/4 v4, 0x2

    aget-object v4, p3, v4

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 335
    const/4 v4, 0x2

    aget-object v4, p3, v4

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getSoundQualityTagPosition(Landroid/content/Context;Landroid/graphics/Bitmap;)[F

    move-result-object v22

    .line 337
    .local v22, "soundQualityTagPosition":[F
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const/4 v8, 0x0

    aget v8, v22, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->applyViewSize(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->x:F

    .line 338
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const/4 v8, 0x1

    aget v8, v22, v8

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->applyViewSize(F)F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->y:F

    .line 342
    .end local v22    # "soundQualityTagPosition":[F
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mUhqSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mUhqSettings:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->isUhqUpscalerEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 343
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathUhqUpscalerActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 344
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;

    move-result-object v4

    const v8, 0x7f04008d

    .line 345
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLAdapterBitmapCache;->getStaticBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 346
    .local v24, "uhqBitmap":Landroid/graphics/Bitmap;
    if-eqz v24, :cond_c

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 349
    .local v18, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->getUhqTagPosition(Landroid/content/Context;Landroid/graphics/Bitmap;I)[F

    move-result-object v25

    .line 350
    .local v25, "uhqPosition":[F
    const/4 v4, 0x3

    aget-object v4, p3, v4

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 351
    const/4 v4, 0x3

    aget-object v4, p3, v4

    const/4 v8, 0x0

    aget v8, v25, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->applyViewSize(F)F

    move-result v9

    add-float/2addr v8, v9

    const v9, 0x7f0d014a

    .line 352
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->x:F

    .line 354
    const/4 v4, 0x3

    aget-object v4, p3, v4

    const/4 v8, 0x1

    aget v8, v25, v8

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->applyViewSize(F)F

    move-result v9

    sub-float/2addr v8, v9

    const v9, 0x7f0d0149

    .line 355
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->y:F

    goto/16 :goto_0

    .line 267
    .end local v5    # "cpAttrs":I
    .end local v6    # "audioId":J
    .end local v10    # "hasLyrics":Z
    .end local v11    # "hasTag":Z
    .end local v12    # "isPrivate":Z
    .end local v13    # "isShuffleEnabled":Z
    .end local v14    # "isSyncedLyric":Z
    .end local v16    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .end local v17    # "nc":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v19    # "soundQualityTagHeight":I
    .end local v23    # "strLyrics":Ljava/lang/String;
    .end local v24    # "uhqBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "uhqPosition":[F
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 276
    .restart local v6    # "audioId":J
    .restart local v12    # "isPrivate":Z
    .restart local v13    # "isShuffleEnabled":Z
    .restart local v17    # "nc":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/app/music/common/player/fullplayer/GLAlbumArtAdapter;->mCpAttrs:I

    .restart local v5    # "cpAttrs":I
    goto/16 :goto_2

    .line 288
    .restart local v14    # "isSyncedLyric":Z
    .restart local v16    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .restart local v23    # "strLyrics":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 295
    .restart local v10    # "hasLyrics":Z
    :cond_9
    const/4 v4, 0x0

    aget-object v4, p3, v4

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 303
    :cond_a
    const v15, 0x7f04007d

    .restart local v15    # "lyricIconRes":I
    goto/16 :goto_5

    .line 311
    .end local v15    # "lyricIconRes":I
    :cond_b
    const/4 v4, 0x1

    aget-object v4, p3, v4

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 358
    .restart local v11    # "hasTag":Z
    .restart local v19    # "soundQualityTagHeight":I
    .restart local v24    # "uhqBitmap":Landroid/graphics/Bitmap;
    :cond_c
    const/4 v4, 0x3

    aget-object v4, p3, v4

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 361
    .end local v24    # "uhqBitmap":Landroid/graphics/Bitmap;
    :cond_d
    const/4 v4, 0x3

    aget-object v4, p3, v4

    const/4 v8, 0x0

    iput-object v8, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method
