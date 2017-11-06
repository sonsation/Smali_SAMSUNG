.class public Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.super Ljava/lang/Object;
.source "AlbumTrackCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$ColumnType;,
        Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$Column;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISC_SEPARATOR:I = 0x3e8

.field private static final EMPTY_NUMBER:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final NO_SINGLE_ARTIST:I = 0x0

.field private static final NO_SUBTITLE:I = -0x1

.field private static final SINGLE_ARTIST:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAggregateColumns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtistColumnIndex:I

.field private mClosed:Z

.field private final mContentObservable:Landroid/database/ContentObservable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

.field private final mCursor:Landroid/database/Cursor;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mDurationColumnIndex:I

.field private mExtras:Landroid/os/Bundle;

.field private mNotifyUri:Landroid/net/Uri;

.field private mPos:I

.field private final mRangeEnd:I

.field private final mRangeStart:I

.field private final mRedirectedInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field private final mSubtitleInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackColumnIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;-><init>(Landroid/database/Cursor;II)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;II)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mExtras:Landroid/os/Bundle;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 92
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mAggregateColumns:Landroid/util/SparseArray;

    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    .line 185
    iput p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeStart:I

    .line 186
    iput p3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeEnd:I

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRedirectedInfos:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSubtitleInfos:Ljava/util/ArrayList;

    .line 191
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRowIdColumnIndex:I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v1, "track"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mTrackColumnIndex:I

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "duration"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mDurationColumnIndex:I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "artist"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mArtistColumnIndex:I

    .line 196
    if-gt p2, p3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 197
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rangeStart must be equal and lower than rangeEnd. rangeStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rangeEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cursor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->buildCursor()V

    .line 203
    sget-object v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is created(size: real/subtitle/total) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSubtitleInfos:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with range ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeStart:I

    return v0
.end method

.method private buildCursor()V
    .locals 10

    .prologue
    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 294
    .local v4, "startTick":J
    sget-object v3, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    const-string v6, "buildCursor() > start"

    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;-><init>()V

    .line 296
    .local v0, "buildDataAggregate":Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;
    new-instance v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)V

    .line 298
    .local v1, "buildDataRedirected":Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onAggregateStartInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;)V

    .line 299
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onRedirectStartInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;)V

    .line 301
    iget v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeStart:I

    .line 302
    .local v2, "position":I
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mAggregateColumns:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, v0, v6}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onAggregateInternal(Landroid/database/Cursor;Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;Landroid/util/SparseArray;)V

    .line 305
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRedirectedInfos:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSubtitleInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1, v6, v7}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onRedirectInternal(Landroid/database/Cursor;Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 307
    iget v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeEnd:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mAggregateColumns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onAggregateCompleteInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;Landroid/util/SparseArray;)V

    .line 309
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRedirectedInfos:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSubtitleInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3, v6}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onRedirectCompleteInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 311
    :cond_2
    sget-object v3, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildCursor() > complete : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-static {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private getColumnValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 327
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mAggregateColumns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    move-object p2, v0

    .line 337
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p2

    .line 330
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    if-eqz v2, :cond_2

    .line 331
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->columns:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 332
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 335
    goto :goto_0

    :cond_2
    move-object p2, v1

    .line 337
    goto :goto_0
.end method

.method private onDeactivateOrClose()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverRegistered:Z

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 453
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mClosed:Z

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 474
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onDeactivateOrClose()V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 476
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    const/4 v4, 0x0

    .line 503
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 505
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 506
    .local v0, "data":[C
    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 507
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 511
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 515
    .end local v0    # "data":[C
    :goto_1
    return-void

    .line 509
    .restart local v0    # "data":[C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 513
    .end local v0    # "data":[C
    :cond_2
    iput v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onDeactivateOrClose()V

    .line 445
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 549
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 712
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mClosed:Z

    if-nez v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    :cond_1
    :goto_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 723
    :goto_1
    return-void

    .line 720
    :catch_0
    move-exception v0

    goto :goto_1

    .line 715
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 421
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 8
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 600
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 601
    .local v3, "periodIndex":I
    if-eq v3, v4, :cond_0

    .line 602
    sget-object v5, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requesting column name with table name -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "columnNames":[Ljava/lang/String;
    array-length v2, v0

    .line 608
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 609
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 608
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 613
    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 619
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 620
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeEnd:I

    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSubtitleInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 395
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 396
    .local v0, "value":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 399
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 386
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 387
    .local v0, "value":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 390
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 362
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iget v1, v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->type:I

    .line 372
    :goto_0
    return v1

    .line 366
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 368
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 369
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 370
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "column"    # I

    .prologue
    .line 377
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 378
    .local v0, "value":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 381
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 681
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mNotifyUri:Landroid/net/Uri;

    monitor-exit v1

    return-object v0

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 353
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 354
    .local v0, "value":Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    .line 357
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 342
    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 344
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 345
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 416
    const/4 v0, 0x3

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    .line 595
    .local v0, "count":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mClosed:Z

    return v0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    .line 584
    .local v0, "count":I
    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->columns:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 553
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getCount()I

    move-result v0

    .line 526
    .local v0, "count":I
    if-lt p1, v0, :cond_0

    .line 527
    iput v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    .line 543
    :goto_0
    return v1

    .line 532
    :cond_0
    if-gez p1, :cond_1

    .line 533
    iput v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    goto :goto_0

    .line 537
    :cond_1
    iget v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->onMove(II)Z

    move-result v1

    .line 538
    .local v1, "result":Z
    if-nez v1, :cond_2

    .line 539
    iput v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    goto :goto_0

    .line 541
    :cond_2
    iput p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected onAggregateCompleteInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;Landroid/util/SparseArray;)V
    .locals 4
    .param p1, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "aggregateColumns":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/16 v0, 0x65

    iget-wide v2, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->totalDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    const/16 v0, 0x66

    iget v1, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->isSingleArtistAlbum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    sget-object v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAggregateCompleteInternal (total-duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->totalDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), (single-artist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->isSingleArtistAlbum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method protected onAggregateInternal(Landroid/database/Cursor;Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;Landroid/util/SparseArray;)V
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p3, "aggregateColumns":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    iget-wide v2, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->totalDuration:J

    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mDurationColumnIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->totalDuration:J

    .line 227
    iget v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mArtistColumnIndex:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "currArtistName":Ljava/lang/String;
    iget-object v1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->preArtistName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 229
    iput-object v0, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->preArtistName:Ljava/lang/String;

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->preArtistName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const/4 v1, 0x0

    iput v1, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;->isSingleArtistAlbum:I

    goto :goto_0
.end method

.method protected onAggregateStartInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$AggregateColumnBuildData;

    .prologue
    .line 222
    return-void
.end method

.method protected onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 657
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 659
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 662
    :cond_0
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onMove(II)Z
    .locals 5
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 490
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRedirectedInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    .line 491
    .local v0, "info":Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;
    iget v1, v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->subtitlePos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 492
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    .line 496
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMove() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->pos:I

    iget v4, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeStart:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCursor:Landroid/database/Cursor;

    iget v2, v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->pos:I

    iget v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRangeStart:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSubtitleInfos:Ljava/util/ArrayList;

    iget v2, v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->subtitlePos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mCurrentSubtitle:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    goto :goto_0
.end method

.method protected onRedirectCompleteInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "redirectedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;>;"
    .local p3, "subtitleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;>;"
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 281
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    iget v0, v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->subtitlePos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 282
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 284
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 286
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->realigned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 287
    iget-object v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->realigned:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    iget-object v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->realigned:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    :cond_2
    return-void
.end method

.method protected onRedirectInternal(Landroid/database/Cursor;Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "redirectedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;>;"
    .local p4, "subtitleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;>;"
    const/4 v7, -0x1

    .line 250
    iget v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mTrackColumnIndex:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 251
    .local v2, "trackField":I
    div-int/lit16 v0, v2, 0x3e8

    .line 252
    .local v0, "currDiscNumber":I
    iget v3, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->lastDiscNumber:I

    if-eq v3, v0, :cond_1

    .line 253
    iget-object v3, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->realigned:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mRedirectedInfos:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->realigned:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 255
    iget-object v3, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->realigned:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 258
    :cond_0
    new-instance v3, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    iget v4, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    iget v5, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->subtitlePos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->subtitlePos:I

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;

    const/16 v3, -0x64

    iget v4, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    iget v5, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->subtitlePos:I

    add-int/2addr v4, v5

    iget v5, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->columnCount:I

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;III)V

    .line 263
    .local v1, "subtitleInfo":Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;
    iget v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mTrackColumnIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->setColumnValue(ILjava/lang/Object;)V

    .line 264
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iput v0, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->lastDiscNumber:I

    .line 267
    .end local v1    # "subtitleInfo":Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;
    :cond_1
    rem-int/lit16 v3, v2, 0x3e8

    if-nez v3, :cond_2

    .line 270
    iget-object v3, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->realigned:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    iget v5, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    invoke-direct {v4, v5, v7}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_0
    iget v3, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    .line 275
    return-void

    .line 272
    :cond_2
    new-instance v3, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;

    iget v4, p2, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    invoke-direct {v3, v4, v7}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;-><init>(II)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onRedirectStartInternal(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;

    .prologue
    const/4 v0, 0x0

    .line 244
    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->pos:I

    .line 245
    iput v0, p1, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->subtitlePos:I

    .line 246
    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 633
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 459
    iput-boolean v3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverRegistered:Z

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 462
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 703
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 693
    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mExtras:Landroid/os/Bundle;

    .line 694
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    .prologue
    .line 667
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 668
    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mNotifyUri:Landroid/net/Uri;

    .line 669
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 670
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 673
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SelfContentObserver;-><init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 674
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mSelfObserverRegistered:Z

    .line 676
    monitor-exit v1

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 640
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 650
    return-void
.end method
