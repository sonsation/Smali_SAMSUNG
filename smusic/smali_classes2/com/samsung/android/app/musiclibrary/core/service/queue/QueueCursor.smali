.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
.source "QueueCursor.java"


# static fields
.field static final AUDIO_ID_INDEX:I = 0x63

.field private static final BLANK:Ljava/lang/String; = " "

.field private static final CAPITAL_AS:Ljava/lang/String; = " AS "

.field private static final CURSOR_MAX_COUNT:I = 0x1388

.field private static final EMPTY:[J

.field private static final LETTER_AS:Ljava/lang/String; = " as "

.field private static final ROW_ID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NowPlayingCursor"

.field private static sNowPlayingIds:[J

.field private static sNowPlayingIdsSize:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[J

.field private mNowPlaying:[J

.field private final mProjection:[Ljava/lang/String;

.field private final mProjectionIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-array v0, v1, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->EMPTY:[J

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->EMPTY:[J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->sNowPlayingIds:[J

    .line 55
    sput v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->sNowPlayingIdsSize:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;[J[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "list"    # [J
    .param p4, "projection"    # [Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjectionIndexMap:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mUri:Landroid/net/Uri;

    .line 80
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjection:[Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjection:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->initMap([Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->initNowCurosr([J)V

    .line 83
    return-void
.end method

.method private getRealCursor([J)Landroid/database/Cursor;
    .locals 12
    .param p1, "list"    # [J

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "NowPlayingCursor"

    const-string v1, "getRealCursor() But uri is null, is service dying? or check service connection"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-object v4

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    .line 139
    :cond_1
    const-string v0, "NowPlayingCursor"

    const-string v1, "Request list is 0"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    array-length v0, p1

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_4

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id"

    .line 147
    invoke-static {v3, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id"

    .line 146
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    move-object v4, v7

    .line 188
    goto :goto_0

    .line 152
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v9, 0x0

    .line 154
    .local v9, "indexOfCursor":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v8, "cursorArrayList":Ljava/util/List;, "Ljava/util/List<Landroid/database/Cursor;>;"
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 156
    .local v6, "copiedArray":[J
    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    .line 158
    :cond_5
    add-int/lit8 v0, v9, 0x1

    mul-int/lit16 v10, v0, 0x1388

    .line 159
    .local v10, "indexOfList":I
    array-length v0, v6

    if-le v10, v0, :cond_6

    .line 160
    array-length v10, v6

    .line 163
    :cond_6
    mul-int/lit16 v0, v9, 0x1388

    invoke-static {v6, v0, v10}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v11

    .line 165
    .local v11, "tempList":[J
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id"

    .line 166
    invoke-static {v3, v11}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 165
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 171
    .restart local v7    # "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_7

    .line 172
    const-string v0, "NowPlayingCursor"

    const-string v1, "getRealCursor, cursor is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_2
    const/4 v0, 0x1

    if-le v9, v0, :cond_3

    .line 184
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 185
    .end local v7    # "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v7    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 175
    :cond_7
    const-string v0, "NowPlayingCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRealCursor limit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cursor.getCount() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v9, v9, 0x1

    .line 179
    array-length v0, v6

    if-lt v10, v0, :cond_5

    goto :goto_2
.end method

.method private getRealCursorIndex(Landroid/database/Cursor;)[J
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v4, 0x0

    new-array v2, v4, [J

    .line 207
    :goto_0
    return-object v2

    .line 196
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 197
    .local v3, "size":I
    new-array v2, v3, [J

    .line 199
    .local v2, "index":[J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, "colidx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 203
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method private initMap([Ljava/lang/String;)V
    .locals 5
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 88
    aget-object v0, p1, v1

    .line 89
    .local v0, "column":Ljava/lang/String;
    const-string v3, " AS "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, " as "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjectionIndexMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "column":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private initNowCurosr([J)V
    .locals 1
    .param p1, "list"    # [J

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getRealCursor([J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getRealCursorIndex(Landroid/database/Cursor;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCursorIdxs:[J

    .line 105
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->initializeIdArray(I)V

    goto :goto_0
.end method

.method private initializeIdArray(I)V
    .locals 6
    .param p1, "listSize"    # I

    .prologue
    .line 278
    sget v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->sNowPlayingIdsSize:I

    .line 279
    .local v1, "size":I
    if-lez v1, :cond_0

    if-ne v1, p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 283
    :cond_0
    if-ge v1, p1, :cond_1

    .line 284
    new-array v2, p1, [J

    sput-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->sNowPlayingIds:[J

    .line 287
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 288
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->sNowPlayingIds:[J

    add-int v3, p1, v0

    int-to-long v4, v3

    aput-wide v4, v2, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    :cond_2
    sput p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->sNowPlayingIdsSize:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 399
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 387
    :cond_0
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjectionIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjectionIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 352
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->onChange(Z)V

    .line 317
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 326
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->sNowPlayingIds:[J

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurPos:I

    aget-wide v2, v1, v2

    .line 335
    :goto_0
    return-wide v2

    .line 327
    :cond_0
    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->onChange(Z)V

    .line 335
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getOrderedPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getQueuePosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 299
    :goto_0
    return-object v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->onChange(Z)V

    .line 299
    const-string v1, ""

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

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

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

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

.method public isShuffleEnabled()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 8
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 217
    if-ne p1, p2, :cond_0

    .line 245
    :goto_0
    return v4

    .line 221
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCursorIdxs:[J

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mSize:I

    if-gt p2, v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v6, :cond_2

    :cond_1
    move v4, v5

    .line 223
    goto :goto_0

    .line 228
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mNowPlaying:[J

    aget-wide v2, v6, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v2, "newId":J
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCursorIdxs:[J

    invoke-static {v5, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 243
    .local v0, "curIdx":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 244
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->mCurPos:I

    goto :goto_0

    .line 229
    .end local v0    # "curIdx":I
    .end local v2    # "newId":J
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "NowPlayingCursor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This cursor abnormal, it is need to update with new cursor that query after queue_changed from service, msg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 234
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-static {v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 235
    goto :goto_0
.end method

.method public removeItems([I)V
    .locals 0
    .param p1, "positions"    # [I

    .prologue
    .line 129
    return-void
.end method

.method public reorder(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 251
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public setAvailableNetwork(Z)V
    .locals 0
    .param p1, "isAvailable"    # Z

    .prologue
    .line 272
    return-void
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 112
    return-void
.end method

.method public setLocalMode(Z)V
    .locals 0
    .param p1, "isLocalMode"    # Z

    .prologue
    .line 262
    return-void
.end method

.method public setSupportLocalMode(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .prologue
    .line 267
    return-void
.end method
