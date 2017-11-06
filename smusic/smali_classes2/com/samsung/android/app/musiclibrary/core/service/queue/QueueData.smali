.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
.super Ljava/lang/Object;
.source "QueueData.java"


# static fields
.field private static final EMPTY_LIST:[J

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final SUB_TAG:Ljava/lang/String; = "FirstQueue: "

.field private static final TAG:Ljava/lang/String; = "SV-List"

.field private static final UNDEFINED:I = -0x1


# instance fields
.field final list:[J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mConvertedPosition:I

.field private mFinished:Z

.field private final mOriginId:J

.field final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->EMPTY_LIST:[J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[JI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [J
    .param p3, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mFinished:Z

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mContext:Landroid/content/Context;

    .line 43
    if-nez p2, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->EMPTY_LIST:[J

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    .line 44
    if-gez p3, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->position:I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    array-length v0, v0

    if-le v0, p3, :cond_2

    .line 46
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->position:I

    aget-wide v0, p2, v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mOriginId:J

    .line 50
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "First QueueData created position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and origin id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mOriginId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->printLog(Ljava/lang/String;)V

    .line 52
    return-void

    :cond_0
    move-object v0, p2

    .line 43
    goto :goto_0

    :cond_1
    move v0, p3

    .line 44
    goto :goto_1

    .line 48
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mOriginId:J

    goto :goto_2
.end method

.method private convertMusicProviderIds(Landroid/content/Context;[J)[J
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceIds"    # [J

    .prologue
    const/4 v4, 0x0

    .line 75
    array-length v9, p2

    .line 76
    .local v9, "size":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v12, "where":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "source_id"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 79
    aget-wide v0, p2, v7

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v0, v9, -0x1

    if-ge v7, v0, :cond_0

    .line 81
    const/16 v0, 0x2c

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "source_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 89
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    const-string/jumbo v0, "source_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 92
    .local v10, "sourceIdIndex":I
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 93
    .local v8, "idIndex":I
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    .line 95
    .local v11, "sparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-direct {p0, v11, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->getArrangeIds(Landroid/util/LongSparseArray;[J)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 99
    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .end local v8    # "idIndex":I
    .end local v10    # "sourceIdIndex":I
    .end local v11    # "sparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    :cond_3
    :goto_1
    return-object v0

    .line 99
    .restart local v8    # "idIndex":I
    .restart local v10    # "sourceIdIndex":I
    .restart local v11    # "sparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    :catch_0
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "idIndex":I
    .end local v10    # "sourceIdIndex":I
    .end local v11    # "sparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    :cond_5
    if-eqz v6, :cond_6

    if-eqz v4, :cond_7

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    :cond_6
    :goto_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->EMPTY_LIST:[J

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 86
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_3
    if-eqz v6, :cond_8

    if-eqz v4, :cond_9

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_8
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private getArrangeIds(Landroid/util/LongSparseArray;[J)[J
    .locals 12
    .param p2, "sourceIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;[J)[J"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "sparseArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 106
    .local v5, "position":I
    array-length v9, p2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    aget-wide v2, p2, v8

    .line 107
    .local v2, "id":J
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 108
    .local v0, "convertedId":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 109
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Convert id but meida id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not exist in MusicProvider."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->printLog(Ljava/lang/String;)V

    .line 106
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget v10, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    iget-wide v10, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mOriginId:J

    cmp-long v10, v10, v2

    if-nez v10, :cond_1

    .line 113
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    .line 115
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 119
    .end local v0    # "convertedId":Ljava/lang/Long;
    .end local v2    # "id":J
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 120
    .local v7, "size":I
    new-array v6, v7, [J

    .line 121
    .local v6, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v7, :cond_3

    .line 122
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_3
    return-object v6
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "SMUSIC-SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method


# virtual methods
.method convert()Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;
    .locals 5

    .prologue
    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->list:[J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->convertMusicProviderIds(Landroid/content/Context;[J)[J

    move-result-object v0

    .line 60
    .local v0, "list":[J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First converted QueueData created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->printLog(Ljava/lang/String;)V

    .line 62
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;-><init>(Landroid/content/Context;[JI)V

    return-object v2

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mConvertedPosition:I

    goto :goto_0
.end method

.method finished()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mFinished:Z

    .line 68
    return-void
.end method

.method isFinished()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueData;->mFinished:Z

    return v0
.end method
