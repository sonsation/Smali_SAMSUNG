.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;
.super Ljava/lang/Object;
.source "Id3TagFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENCODE_ID3TAG:Ljava/lang/String; = "ISO-8859-1"

.field private static final ID3_HEADER_IDENTIFIER:Ljava/lang/String; = "494433"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllTagSize:I

.field private mMajorVersion:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 168
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/HexUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private isId3Tag(Ljava/io/RandomAccessFile;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, "isId3Tag":Z
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$1;)V

    .line 98
    .local v0, "header":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;
    iput-byte v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mMajorVersion:B

    .line 99
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->identifier:[B

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 102
    const-string v4, "494433"

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->identifier:[B

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->version:[B

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 105
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->flags:[B

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 106
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->size:[B

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 108
    iput v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    .line 109
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->size:[B

    array-length v1, v4

    .line 110
    .local v1, "headerSizeLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 111
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->size:[B

    aget-byte v5, v5, v2

    and-int/lit8 v5, v5, 0x7f

    add-int/lit8 v6, v2, 0x1

    sub-int v6, v1, v6

    mul-int/lit8 v6, v6, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->version:[B

    aget-byte v4, v4, v7

    iput-byte v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mMajorVersion:B

    .line 120
    const/4 v3, 0x1

    .line 125
    .end local v1    # "headerSizeLength":I
    .end local v2    # "i":I
    :cond_1
    return v3
.end method


# virtual methods
.method public findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;
    .locals 6
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "findTag"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;-><init>()V

    .line 132
    .local v3, "tag":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;
    iget-byte v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mMajorVersion:B

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$102(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;I)I

    .line 134
    :goto_0
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 136
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 138
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getTagSize()I

    move-result v2

    .line 139
    .local v2, "size":I
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "frame":Ljava/lang/String;
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 164
    .end local v1    # "frame":Ljava/lang/String;
    .end local v2    # "size":I
    .end local v3    # "tag":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 150
    .restart local v1    # "frame":Ljava/lang/String;
    .restart local v2    # "size":I
    .restart local v3    # "tag":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;
    :cond_1
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 151
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$502(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 161
    .end local v1    # "frame":Ljava/lang/String;
    .end local v2    # "size":I
    .end local v3    # "tag":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    const-string v5, "findTag"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "frame":Ljava/lang/String;
    .restart local v2    # "size":I
    .restart local v3    # "tag":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;
    :cond_2
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
