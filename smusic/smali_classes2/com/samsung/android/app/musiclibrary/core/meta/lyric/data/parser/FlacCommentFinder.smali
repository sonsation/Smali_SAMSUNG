.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;
.super Ljava/lang/Object;
.source "FlacCommentFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$VORBIS_COMMENT;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FLAC;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_SIZE:I = 0x100000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkBounds(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 133
    const/high16 v0, 0x100000

    if-le v0, p1, :cond_0

    if-gtz p1, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Vorbis comment size argument is abnormal. requested size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    return-void
.end method

.method private convertToIntLittleEndian([B)I
    .locals 4
    .param p1, "target"    # [B

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 142
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return v1
.end method

.method private findCommentInternal(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .param p1, "commentType"    # Ljava/lang/String;
    .param p2, "comments"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v4

    .line 76
    :cond_1
    if-eqz p2, :cond_0

    array-length v5, p2

    if-eqz v5, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "currentPos":I
    invoke-direct {p0, p2, v1, v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->readInt([BII)I

    move-result v3

    .line 85
    .local v3, "len":I
    add-int/lit8 v1, v1, 0x4

    .line 93
    add-int/lit8 v1, v3, 0x4

    .line 95
    invoke-direct {p0, p2, v1, v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->readInt([BII)I

    move-result v3

    .line 96
    add-int/lit8 v1, v1, 0x4

    .line 98
    move v2, v3

    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_0

    .line 99
    invoke-direct {p0, p2, v1, v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->readInt([BII)I

    move-result v3

    .line 100
    add-int/lit8 v1, v1, 0x4

    .line 102
    const-string v5, "UTF-8"

    invoke-direct {p0, p2, v1, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->readString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "c":Ljava/lang/String;
    add-int/2addr v1, v3

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 98
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 182
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/HexUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parsingHeader([B)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;
    .locals 8
    .param p1, "header"    # [B

    .prologue
    const/4 v4, 0x0

    .line 148
    aget-byte v1, p1, v4

    .line 149
    .local v1, "first":B
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    .line 150
    .local v4, "isLastBlock":Z
    :cond_0
    and-int/lit8 v0, v1, 0x7f

    .line 152
    .local v0, "blockType":I
    array-length v2, p1

    .line 153
    .local v2, "headerSize":I
    const/4 v5, 0x0

    .line 154
    .local v5, "size":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 155
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    sub-int v7, v2, v3

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_1
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;

    invoke-direct {v6, v4, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;-><init>(ZII)V

    return-object v6
.end method

.method private readInt([BII)I
    .locals 2
    .param p1, "allContents"    # [B
    .param p2, "startPos"    # I
    .param p3, "size"    # I

    .prologue
    .line 126
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->checkBounds(I)V

    .line 127
    new-array v0, p3, [B

    .line 128
    .local v0, "content":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->convertToIntLittleEndian([B)I

    move-result v1

    return v1
.end method

.method private readString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "allContents"    # [B
    .param p2, "startPos"    # I
    .param p3, "size"    # I
    .param p4, "charsetName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->checkBounds(I)V

    .line 120
    new-array v0, p3, [B

    .line 121
    .local v0, "content":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public findVorbisComment(Ljava/io/RandomAccessFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "commentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x4

    .line 41
    const/4 v3, 0x0

    .line 42
    .local v3, "isEnd":Z
    :cond_0
    if-nez v3, :cond_1

    .line 43
    new-array v2, v7, [B

    .line 45
    .local v2, "header":[B
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 46
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->parsingHeader([B)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;

    move-result-object v1

    .line 47
    .local v1, "h":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;
    iget-boolean v3, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->isLastBlock:Z

    .line 48
    iget v6, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockType:I

    if-ne v6, v7, :cond_2

    .line 49
    iget v5, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->checkBounds(I)V

    .line 50
    iget v5, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    new-array v0, v5, [B

    .line 51
    .local v0, "block":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 56
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->findCommentInternal(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 66
    .end local v0    # "block":[B
    .end local v1    # "h":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;
    .end local v2    # "header":[B
    :cond_1
    :goto_0
    return-object v5

    .line 59
    .restart local v1    # "h":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;
    .restart local v2    # "header":[B
    :cond_2
    iget v6, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v4

    .line 60
    .local v4, "realSkipped":I
    iget v6, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    if-ge v4, v6, :cond_0

    goto :goto_0
.end method

.method public isFlac(Ljava/io/RandomAccessFile;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 34
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 36
    .local v0, "id":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 37
    const-string v1, "664C6143"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->getHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
