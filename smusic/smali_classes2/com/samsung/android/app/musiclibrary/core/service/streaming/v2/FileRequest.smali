.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
.super Ljava/lang/Object;
.source "FileRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$StreamingCp;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;,
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;
    }
.end annotation


# static fields
.field private static final DIVIDER:C = '?'

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final FULL_SONG:Ljava/lang/String; = "1"


# instance fields
.field public final id:Ljava/lang/String;

.field public final options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

.field public final requestedTime:J

.field public final secureType:I

.field public final serverTimeStamp:Ljava/lang/String;

.field public final totalBytes:J

.field final urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "urlRetriever"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;
    .param p3, "totalBytes"    # J
    .param p5, "secureType"    # I
    .param p6, "serverTimeStamp"    # Ljava/lang/String;
    .param p7, "options"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;

    .line 72
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->totalBytes:J

    .line 73
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->serverTimeStamp:Ljava/lang/String;

    .line 74
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->secureType:I

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->requestedTime:J

    .line 76
    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->options:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    .line 77
    return-void
.end method

.method public static buildStreamingId(Ljava/lang/String;III)Ljava/lang/String;
    .locals 2
    .param p0, "sourceId"    # Ljava/lang/String;
    .param p1, "quality"    # I
    .param p2, "fullSong"    # I
    .param p3, "streamingContentProvider"    # I

    .prologue
    const/16 v1, 0x3f

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFirstPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFourthPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v4, 0x3f

    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const/4 v3, 0x0

    .line 142
    :goto_0
    return-object v3

    .line 139
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 140
    .local v1, "second":I
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 141
    .local v2, "third":I
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 142
    .local v0, "fourth":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getSecondPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v2, 0x3f

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    .line 120
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 121
    .local v0, "second":I
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getThirdPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v3, 0x3f

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v2, 0x0

    .line 131
    :goto_0
    return-object v2

    .line 129
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 130
    .local v0, "second":I
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 131
    .local v1, "third":I
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "urlRetriever"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;
    .param p2, "totalBytes"    # J
    .param p4, "secureType"    # I
    .param p5, "options"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    .prologue
    .line 46
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "urlRetriever"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;
    .param p2, "totalBytes"    # J
    .param p4, "secureType"    # I
    .param p5, "fileCreatedTime"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->obtain(Z)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .line 51
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .locals 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "urlRetriever"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;
    .param p2, "totalBytes"    # J
    .param p4, "secureType"    # I
    .param p5, "fileCreatedTime"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    .prologue
    .line 57
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;-><init>(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;)V

    return-object v1
.end method

.method public static parseCp(Ljava/lang/String;)I
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->getFourthPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static parseFullSong(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->getThirdPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseQuality(Ljava/lang/String;)I
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->getSecondPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "quality":I
    return v0
.end method

.method public static parseSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->getFirstPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServerTotalBytes()J
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->urlRetriever:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->totalBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serverTimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->serverTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
