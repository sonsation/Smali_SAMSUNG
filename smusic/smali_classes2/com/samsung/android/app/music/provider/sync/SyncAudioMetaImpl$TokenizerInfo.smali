.class final Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;
.super Ljava/lang/Object;
.source "SyncAudioMetaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TokenizerInfo"
.end annotation


# instance fields
.field private final mAlbumsIds:Ljava/util/StringTokenizer;

.field private final mDates:Ljava/util/StringTokenizer;

.field private final mIds:Ljava/util/StringTokenizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;)V
    .locals 3
    .param p1, "combinedInfo"    # Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedIds:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mIds:Ljava/util/StringTokenizer;

    .line 479
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedDates:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mDates:Ljava/util/StringTokenizer;

    .line 480
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p1, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$CombinedInfo;->mCombinedAlbumIds:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mAlbumsIds:Ljava/util/StringTokenizer;

    .line 481
    return-void
.end method


# virtual methods
.method getNextItemInfo()Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;
    .locals 5

    .prologue
    .line 484
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mIds:Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 485
    const/4 v4, 0x0

    .line 500
    :goto_0
    return-object v4

    .line 489
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mIds:Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, "id":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mDates:Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 496
    .local v1, "date":Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mAlbumsIds:Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 500
    .local v0, "albumId":Ljava/lang/String;
    :goto_2
    new-instance v4, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;

    invoke-direct {v4, v3, v1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    .end local v0    # "albumId":Ljava/lang/String;
    .end local v1    # "date":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 493
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v1, ""

    .restart local v1    # "date":Ljava/lang/String;
    goto :goto_1

    .line 497
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v2

    .line 498
    .restart local v2    # "e":Ljava/util/NoSuchElementException;
    const-string v0, ""

    .restart local v0    # "albumId":Ljava/lang/String;
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 505
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "Ids count[%d], Dates count[%d], AlbumIds count[%d]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mIds:Ljava/util/StringTokenizer;

    .line 507
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mDates:Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioMetaImpl$TokenizerInfo;->mAlbumsIds:Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 506
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
