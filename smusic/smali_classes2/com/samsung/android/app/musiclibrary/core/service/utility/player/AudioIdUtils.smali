.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;
.super Ljava/lang/Object;
.source "AudioIdUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioIdUtils"

.field private static final sEmptyList:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->sEmptyList:[J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getAudioIds(Landroid/database/Cursor;)[J
    .locals 13
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x0

    .line 17
    const-string v9, "AudioIdUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAudioIds() - cursor: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    if-nez p0, :cond_0

    .line 19
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->sEmptyList:[J

    .line 56
    :goto_0
    return-object v7

    .line 21
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 22
    .local v4, "len":I
    if-nez v4, :cond_1

    .line 23
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->sEmptyList:[J

    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    :try_start_0
    const-string v9, "audio_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 34
    .local v1, "index":I
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-array v7, v9, [J

    .line 35
    .local v7, "list":[J
    const/4 v5, 0x0

    .line 39
    .local v5, "length":I
    :cond_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 40
    .local v2, "id":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_3

    .line 41
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "length":I
    .local v6, "length":I
    aput-wide v2, v7, v5

    move v5, v6

    .line 43
    .end local v6    # "length":I
    .restart local v5    # "length":I
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 45
    if-nez v5, :cond_4

    .line 46
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->sEmptyList:[J

    goto :goto_0

    .line 30
    .end local v1    # "index":I
    .end local v2    # "id":J
    .end local v5    # "length":I
    .end local v7    # "list":[J
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v9, "_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_1

    .line 49
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "id":J
    .restart local v5    # "length":I
    .restart local v7    # "list":[J
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eq v5, v9, :cond_5

    .line 50
    new-array v8, v5, [J

    .line 51
    .local v8, "temp":[J
    invoke-static {v7, v12, v8, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    move-object v7, v8

    .line 55
    .end local v8    # "temp":[J
    :cond_5
    const-string v9, "AudioIdUtils"

    const-string v10, "getAudioIds end"

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
