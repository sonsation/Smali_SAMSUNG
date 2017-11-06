.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "Mp4V2Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    }
.end annotation


# static fields
.field private static final META_ITEM_LIST_PATH:Ljava/lang/String;

.field private static final MP4V_FORMAT:Ljava/lang/String; = ".m4a"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "moov"

    const-string/jumbo v1, "udta"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ilst"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->META_ITEM_LIST_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    return-void
.end method

.method private convertToItmfItem(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    .locals 19
    .param p1, "rootAtom"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    sget-object v16, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->META_ITEM_LIST_PATH:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->findAtom(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object v10

    .line 128
    .local v10, "ilst":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    if-nez v10, :cond_1

    .line 129
    sget-object v16, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No found atom : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->META_ITEM_LIST_PATH:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->access$000()[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    move-result-object v12

    .line 155
    :cond_0
    return-object v12

    .line 132
    :cond_1
    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->childSize()I

    move-result v5

    .line 133
    .local v5, "childSize":I
    new-array v12, v5, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    .line 134
    .local v12, "items":[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_0

    .line 135
    invoke-virtual {v10, v8}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getChildAtom(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object v3

    .line 136
    .local v3, "atom":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getType()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;-><init>(Ljava/lang/String;)V

    .line 137
    .local v11, "item":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    aput-object v11, v12, v8

    .line 139
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->childSize()I

    move-result v4

    .line 141
    .local v4, "cchildSize":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v4, :cond_3

    .line 142
    invoke-virtual {v3, v13}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getChildAtom(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object v2

    .line 143
    .local v2, "aatom":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    const-string v16, "data"

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 141
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move-object v7, v2

    .line 146
    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;

    .line 147
    .local v7, "dataAtom":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;
    iget-object v0, v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;->typeSetIdentifier:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->getValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v9, v0

    .line 148
    .local v9, "id":B
    iget-object v0, v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;->typeCode:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BasicTypeProperty;->getValue()I

    move-result v16

    move/from16 v0, v16

    int-to-byte v6, v0

    .line 149
    .local v6, "code":B
    iget-object v0, v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;->locale:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->getValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v14, v0

    .line 150
    .local v14, "locale":I
    iget-object v0, v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;->metadata:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4BytesProperty;->getValue(I)[B

    move-result-object v15

    .line 152
    .local v15, "value":[B
    iget-object v0, v11, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->dataList:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;

    move-object/from16 v0, v17

    invoke-direct {v0, v9, v6, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;-><init>(BBI[B)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    .end local v2    # "aatom":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .end local v6    # "code":B
    .end local v7    # "dataAtom":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;
    .end local v9    # "id":B
    .end local v14    # "locale":I
    .end local v15    # "value":[B
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private fetchString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "cim":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;>;"
    const/4 v2, 0x0

    .line 159
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    .line 160
    .local v1, "item":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v2

    .line 164
    :cond_1
    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->dataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;

    .line 165
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;->value:[B

    if-eqz v3, :cond_0

    .line 168
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfData;->value:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method protected canParse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->close()V

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".m4a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 58
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v7, v8, v8}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->create(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object v0

    .line 61
    .local v0, "atom":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 62
    .local v2, "fileSize":J
    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->setStart(J)V

    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->setEnd(J)V

    .line 64
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->setSize(J)V

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->read()V

    .line 68
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->convertToItmfItem(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;

    move-result-object v4

    .line 69
    .local v4, "itemList":[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    array-length v7, v4

    if-nez v7, :cond_0

    .line 70
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 81
    :goto_0
    return-object v7

    .line 73
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v5, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;>;"
    array-length v8, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v1, v4, v7

    .line 75
    .local v1, "item":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    iget-object v9, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;->code:Ljava/lang/String;

    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 77
    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser$Mp4ItmfItem;
    :cond_1
    const-string/jumbo v7, "\ufffdlyr"

    invoke-direct {p0, v5, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Mp4V2Parser;->fetchString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "lyrics":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 79
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_0

    .line 81
    :cond_2
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-direct {v7, v6}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
