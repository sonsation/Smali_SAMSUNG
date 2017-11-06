.class final Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;
.super Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;
.source "ScriptTagPayloadReader.java"


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 51
    return-void
.end method

.method private static readAmfBoolean(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readAmfData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;
    .locals 1
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "type"    # I

    .prologue
    .line 192
    packed-switch p1, :pswitch_data_0

    .line 208
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 194
    :pswitch_1
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfBoolean(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_3
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_4
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfObject(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_5
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_6
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfStrictArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 206
    :pswitch_7
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static readAmfDate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/Date;
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 186
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 187
    .local v0, "date":Ljava/util/Date;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 188
    return-object v0
.end method

.method private static readAmfDouble(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;
    .locals 2
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfEcmaArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 6
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 170
    .local v1, "count":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 171
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 172
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v4

    .line 174
    .local v4, "type":I
    invoke-static {p0, v4}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_0
    return-object v0
.end method

.method private static readAmfObject(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v2

    .line 154
    .local v2, "type":I
    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 159
    return-object v0

    .line 157
    :cond_0
    invoke-static {p0, v2}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static readAmfStrictArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 135
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v3

    .line 138
    .local v3, "type":I
    invoke-static {p0, v3}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v3    # "type":I
    :cond_0
    return-object v2
.end method

.method private static readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 122
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 123
    .local v0, "position":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 124
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 1
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .locals 1
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected parsePayload(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .locals 8
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v4

    .line 66
    .local v4, "nameType":I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    .line 68
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v6}, Lcom/google/android/exoplayer/ParserException;-><init>()V

    throw v6

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "onMetaData"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v5

    .line 76
    .local v5, "type":I
    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 78
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v6}, Lcom/google/android/exoplayer/ParserException;-><init>()V

    throw v6

    .line 81
    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v2

    .line 82
    .local v2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "duration"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    const-string v6, "duration"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 84
    .local v0, "durationSeconds":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_1

    .line 85
    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v0

    double-to-long v6, v6

    invoke-virtual {p0, v6, v7}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->setDurationUs(J)V

    goto :goto_0
.end method
