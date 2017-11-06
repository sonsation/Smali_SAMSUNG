.class Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
.super Ljava/lang/Object;
.source "ID3v2Frame.java"


# instance fields
.field final bytes:[B

.field final dataLengthIndicator:I

.field final flags:[B

.field final id:[B

.field private mOffset:J

.field final size:I


# direct methods
.method private constructor <init>([BI[B[B)V
    .locals 5
    .param p1, "id"    # [B
    .param p2, "size"    # I
    .param p3, "flags"    # [B
    .param p4, "bytes"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->id:[B

    .line 31
    iput p2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->size:I

    .line 32
    iput-object p3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->flags:[B

    .line 33
    iput-object p4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->bytes:[B

    .line 38
    aget-byte v1, p3, v4

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    .line 39
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "buf":Ljava/nio/ByteBuffer;
    if-eqz p4, :cond_0

    array-length v1, p4

    if-lt v1, v3, :cond_0

    .line 41
    invoke-virtual {v0, p4, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->getIntFromSynchSafeBytes([B)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->dataLengthIndicator:I

    .line 49
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 44
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    iput v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->dataLengthIndicator:I

    goto :goto_0

    .line 47
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    iput v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->dataLengthIndicator:I

    goto :goto_0
.end method

.method public static obtain([BI[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .locals 1
    .param p0, "id"    # [B
    .param p1, "size"    # I
    .param p2, "flags"    # [B
    .param p3, "bytes"    # [B

    .prologue
    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;-><init>([BI[B[B)V

    return-object v0
.end method

.method public static obtain([BI[B[BJ)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .locals 2
    .param p0, "id"    # [B
    .param p1, "size"    # I
    .param p2, "flags"    # [B
    .param p3, "bytes"    # [B
    .param p4, "offset"    # J

    .prologue
    .line 64
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;-><init>([BI[B[B)V

    .line 65
    .local v0, "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    invoke-virtual {v0, p4, p5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->setOffset(J)V

    .line 66
    return-object v0
.end method


# virtual methods
.method getOffset()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->mOffset:J

    return-wide v0
.end method

.method setOffset(J)V
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->mOffset:J

    .line 53
    return-void
.end method
