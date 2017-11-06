.class final Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
.super Ljava/lang/Object;
.source "ID3v2Tag.java"


# instance fields
.field final flags:B

.field private final mFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;",
            ">;"
        }
    .end annotation
.end field

.field final size:I

.field final version:[B


# direct methods
.method private constructor <init>([BBI)V
    .locals 1
    .param p1, "version"    # [B
    .param p2, "flags"    # B
    .param p3, "size"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    .line 20
    iput-byte p2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->flags:B

    .line 21
    iput p3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->size:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->mFrames:Ljava/util/Map;

    .line 23
    return-void
.end method

.method private addFrames(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "frames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->mFrames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method static obtain(Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .locals 3
    .param p0, "tag"    # Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .param p1, "newSize"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    iget-byte v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->flags:B

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;-><init>([BBI)V

    .line 31
    .local v0, "newTag":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getFrames()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->addFrames(Ljava/util/Map;)V

    .line 32
    return-object v0
.end method

.method static obtain(Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;[B)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .locals 3
    .param p0, "tag"    # Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .param p1, "version"    # [B

    .prologue
    .line 36
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    iget-byte v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->flags:B

    iget v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->size:I

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;-><init>([BBI)V

    .line 37
    .local v0, "newTag":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->getFrames()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->addFrames(Ljava/util/Map;)V

    .line 38
    return-object v0
.end method

.method static obtain([BBI)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;
    .locals 1
    .param p0, "version"    # [B
    .param p1, "flag"    # B
    .param p2, "size"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;-><init>([BBI)V

    return-object v0
.end method


# virtual methods
.method addFrame(ILcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;)V
    .locals 2
    .param p1, "metaType"    # I
    .param p2, "frame"    # Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->mFrames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method getFrame(I)Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    .locals 2
    .param p1, "metaType"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->mFrames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    return-object v0
.end method

.method getFrames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->mFrames:Ljava/util/Map;

    return-object v0
.end method

.method getMajorVersion()B
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method propagateOffsetChanged(JI)V
    .locals 9
    .param p1, "offset"    # J
    .param p3, "delta"    # I

    .prologue
    .line 69
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->mFrames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;

    .line 71
    .local v1, "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->getOffset()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->getOffset()J

    move-result-wide v4

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;->setOffset(J)V

    goto :goto_0

    .line 75
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;>;"
    .end local v1    # "frame":Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Frame;
    :cond_1
    return-void
.end method

.method removeFrame(I)V
    .locals 2
    .param p1, "metaType"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->mFrames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "=== ID3v2 Tag Info ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->version:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nflags : 0b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->flags:B

    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->binToString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsize : "

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Tag;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
