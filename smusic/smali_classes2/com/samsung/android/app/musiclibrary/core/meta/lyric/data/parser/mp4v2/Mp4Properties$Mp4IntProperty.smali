.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;
.source "Mp4Properties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mp4IntProperty"
.end annotation


# instance fields
.field private final mSize:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x8L
        to = 0x40L
    .end annotation
.end field

.field private mValue:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;I)V
    .locals 0
    .param p1, "parentAtom"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    .line 26
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mSize:I

    .line 27
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mValue:J

    return-wide v0
.end method

.method read(Ljava/io/RandomAccessFile;I)V
    .locals 8
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "index"    # I

    .prologue
    .line 31
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mSize:I

    div-int/lit8 v2, v3, 0x8

    .line 32
    .local v2, "length":I
    new-array v0, v2, [B

    .line 34
    .local v0, "bytes":[B
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 36
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mValue:J

    aget-byte v3, v0, v1

    mul-int/lit8 v6, v1, 0x8

    shl-int/2addr v3, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mValue:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 41
    :cond_0
    return-void
.end method
