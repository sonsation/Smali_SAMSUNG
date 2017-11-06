.class public Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "SimpleLyricPopup.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final KEY_ARTIST_NAME:Ljava/lang/String; = "key_artist_name"

.field private static final KEY_FROM_SCREEN:Ljava/lang/String; = "key_from_screen"

.field private static final KEY_LYRIC_URL:Ljava/lang/String; = "key_lyric_url"

.field private static final KEY_SIMPLE_TRACK:Ljava/lang/String; = "key_simple_track"

.field private static final KEY_TRACK_ID:Ljava/lang/String; = "key_track_id"

.field private static final KEY_TRACK_TITLE:Ljava/lang/String; = "key_track_title"

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleLyricPopup"


# instance fields
.field private artistName:Ljava/lang/String;

.field private lyricsUrl:Ljava/lang/String;

.field private mAritstTextView:Landroid/widget/TextView;

.field private mLyricScrollView:Landroid/widget/ScrollView;

.field private mLyricView:Landroid/widget/TextView;

.field private mProgress:Landroid/view/View;

.field private mScreenId:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private trackId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method private changeScrollViewEdgeColor(I)V
    .locals 9
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 207
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mLyricScrollView:Landroid/widget/ScrollView;

    if-eqz v7, :cond_1

    .line 208
    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/String;

    const-string v7, "mEdgeGlowTop"

    aput-object v7, v5, v6

    const-string v7, "mEdgeGlowBottom"

    aput-object v7, v5, v8

    const/4 v7, 0x2

    const-string v8, "mEdgeGlowLeft"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string v8, "mEdgeGlowRight"

    aput-object v8, v5, v7

    .line 210
    .local v5, "edgeGlows":[Ljava/lang/String;
    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v5, v6

    .line 211
    .local v3, "edgeGlow":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mLyricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 212
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 215
    .local v4, "edgeGlowField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 216
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mLyricScrollView:Landroid/widget/ScrollView;

    .line 217
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EdgeEffect;

    .line 218
    .local v2, "edgeEffect":Landroid/widget/EdgeEffect;
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v2    # "edgeEffect":Landroid/widget/EdgeEffect;
    .end local v4    # "edgeGlowField":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 222
    goto :goto_1

    .line 226
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "edgeGlow":Ljava/lang/String;
    .end local v5    # "edgeGlows":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private changeScrollbarColor(I)V
    .locals 14
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mLyricScrollView:Landroid/widget/ScrollView;

    if-eqz v9, :cond_0

    .line 230
    const/high16 v9, -0x1000000

    or-int/2addr v9, p1

    const v10, -0x33000001    # -1.3421772E8f

    and-int v8, v9, v10

    .line 232
    .local v8, "targetColor":I
    :try_start_0
    const-class v9, Landroid/view/View;

    const-string v10, "mScrollCache"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 233
    .local v3, "mScrollCacheField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 234
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mLyricScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 235
    .local v2, "mScrollCache":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "scrollBar"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 236
    .local v6, "scrollBarField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 238
    .local v5, "scrollBar":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "setVerticalThumbDrawable"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/graphics/drawable/Drawable;

    aput-object v13, v11, v12

    .line 239
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 240
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 242
    const/4 v9, 0x1

    new-array v1, v9, [Landroid/graphics/drawable/Drawable;

    .line 243
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v9, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v7, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 244
    .local v7, "sd1":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0508

    .line 246
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 245
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 247
    const/4 v9, 0x0

    aput-object v7, v1, v9

    .line 249
    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "mScrollCache":Ljava/lang/Object;
    .end local v3    # "mScrollCacheField":Ljava/lang/reflect/Field;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "scrollBar":Ljava/lang/Object;
    .end local v6    # "scrollBarField":Ljava/lang/reflect/Field;
    .end local v7    # "sd1":Landroid/graphics/drawable/ShapeDrawable;
    .end local v8    # "targetColor":I
    :cond_0
    :goto_0
    return-void

    .line 250
    .restart local v8    # "targetColor":I
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayInfo()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mAritstTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/SimpleTrack;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    .locals 4
    .param p0, "screenId"    # Ljava/lang/String;
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v1, "SimpleLyricPopup"

    const-string v2, "newInstance : track is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    .local v0, "lyricUrl":Ljava/lang/String;
    instance-of v1, p1, Lcom/samsung/android/app/music/common/model/TrackDetail;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 92
    check-cast v1, Lcom/samsung/android/app/music/common/model/TrackDetail;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getLyricsUrl()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getDisplayArtistName()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-static {p0, v1, v2, v3, v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    move-result-object v1

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    .locals 3
    .param p0, "screenId"    # Ljava/lang/String;
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;-><init>()V

    .line 100
    .local v1, "popup":Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_from_screen"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "key_track_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    .locals 3
    .param p0, "screenId"    # Ljava/lang/String;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "trackTitle"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "lyricUrl"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    move-result-object v1

    .line 110
    .local v1, "popup":Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_from_screen"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "key_track_title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "key_artist_name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "key_lyric_url"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v1
.end method

.method private requestLyric()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 262
    const-string v1, "SimpleLyricPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLyric : request - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->lyricsUrl:Ljava/lang/String;

    .line 263
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", track id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->lyricsUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->lyricsUrl:Ljava/lang/String;

    .line 268
    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->requestLyric(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestLyricUrl()V
    .locals 3

    .prologue
    .line 275
    const-string v0, "SimpleLyricPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLyricUrl : track Id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackId:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getTrackDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method public static show(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 3
    .param p0, "screenid"    # Ljava/lang/String;
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 297
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->newInstance(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/SimpleTrack;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    move-result-object v0

    .line 298
    .local v0, "popup":Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    if-nez v0, :cond_0

    .line 299
    const-string v1, "SimpleLyricPopup"

    const-string/jumbo v2, "show : popup is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v1, "SimpleLyricPopup"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static show(Ljava/lang/String;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "screenID"    # Ljava/lang/String;
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "trackTitle"    # Ljava/lang/String;
    .param p4, "artist"    # Ljava/lang/String;
    .param p5, "lyricUrl"    # Ljava/lang/String;

    .prologue
    .line 307
    .line 308
    invoke-static {p0, p2, p3, p4, p5}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    move-result-object v0

    .line 309
    .local v0, "popup":Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    const-string v1, "SimpleLyricPopup"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 310
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f040180

    return v0
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mProgress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 319
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mProgress:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    const-string v1, "SimpleLyricPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rsp - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sparse-switch p2, :sswitch_data_0

    .line 351
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 325
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mLyricView:Landroid/widget/TextView;

    check-cast p4, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->getDecodedLyrics()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 337
    :pswitch_1
    instance-of v1, p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    if-eqz v1, :cond_0

    .line 338
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;

    .line 339
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkResponse/TrackDetailResponseModel;->getTrackInfo()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    .line 340
    .local v0, "detail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->setTrackTitle(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->setArtist(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getLyricsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->setLyricsUrl(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->requestLyric()Z

    goto :goto_0

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x6d -> :sswitch_0
        0x2b5d -> :sswitch_1
    .end sparse-switch

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 335
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDialogCreated(Landroid/app/Dialog;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "key_from_screen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mScreenId:Ljava/lang/String;

    .line 172
    const-string v1, "key_track_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackId:Ljava/lang/String;

    .line 173
    const-string v1, "key_track_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackTitle:Ljava/lang/String;

    .line 174
    const-string v1, "key_artist_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->artistName:Ljava/lang/String;

    .line 175
    const-string v1, "key_lyric_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->lyricsUrl:Ljava/lang/String;

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    const v1, 0x7f12027b

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v1, 0x7f120456

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mTitleTextView:Landroid/widget/TextView;

    .line 189
    const v1, 0x7f12019f

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mAritstTextView:Landroid/widget/TextView;

    .line 190
    const v1, 0x7f120458

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mLyricView:Landroid/widget/TextView;

    .line 191
    const v1, 0x7f12027e

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mProgress:Landroid/view/View;

    .line 192
    const v1, 0x7f120457

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->mLyricScrollView:Landroid/widget/ScrollView;

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->displayInfo()V

    .line 195
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onMilkServiceConnected()V

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->requestLyric()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->requestLyricUrl()V

    .line 204
    :cond_0
    return-void
.end method

.method protected primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->changeScrollViewEdgeColor(I)V

    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->changeScrollbarColor(I)V

    .line 165
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->artistName:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setLyricsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyrics"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->lyricsUrl:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackId:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->trackTitle:Ljava/lang/String;

    .line 290
    return-void
.end method

.method protected updateAttribute(Landroid/app/Dialog;)V
    .locals 10
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 127
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 129
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAttribute : before width - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", gravity - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 135
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    .line 136
    .local v0, "deviceType":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 138
    int-to-double v6, v3

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 150
    :goto_0
    const/16 v5, 0x11

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getDimAmount()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getDimAmount()F

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 154
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAttribute : after width - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", gravity - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 159
    return-void

    .line 143
    :cond_1
    if-nez v0, :cond_2

    .line 144
    int-to-double v6, v3

    const-wide/high16 v8, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 146
    :cond_2
    int-to-double v6, v3

    const-wide/high16 v8, 0x3fde000000000000L    # 0.46875

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method
