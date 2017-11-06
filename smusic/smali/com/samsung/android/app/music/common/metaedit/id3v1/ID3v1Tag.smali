.class Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;
.super Ljava/lang/Object;
.source "ID3v1Tag.java"


# instance fields
.field final album:[B

.field final artist:[B

.field final comment:[B

.field final genre:[B

.field final title:[B

.field final trackNo:[B

.field final year:[B


# direct methods
.method private constructor <init>([B[B[B[B[B[B[B)V
    .locals 0
    .param p1, "title"    # [B
    .param p2, "artist"    # [B
    .param p3, "album"    # [B
    .param p4, "year"    # [B
    .param p5, "comment"    # [B
    .param p6, "trackNo"    # [B
    .param p7, "genre"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->title:[B

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->artist:[B

    .line 31
    iput-object p3, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->album:[B

    .line 32
    iput-object p4, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->year:[B

    .line 33
    iput-object p5, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->comment:[B

    .line 34
    iput-object p6, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->trackNo:[B

    .line 35
    iput-object p7, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->genre:[B

    .line 36
    return-void
.end method

.method static obtain([B[B[B[B[B[B[B)Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;
    .locals 8
    .param p0, "title"    # [B
    .param p1, "artist"    # [B
    .param p2, "album"    # [B
    .param p3, "year"    # [B
    .param p4, "comment"    # [B
    .param p5, "trackNo"    # [B
    .param p6, "genre"    # [B

    .prologue
    .line 24
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;-><init>([B[B[B[B[B[B[B)V

    return-object v0
.end method


# virtual methods
.method getBytes(I)[B
    .locals 1
    .param p1, "metaType"    # I

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 53
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->title:[B

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->artist:[B

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->album:[B

    goto :goto_0

    .line 47
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->year:[B

    goto :goto_0

    .line 49
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->trackNo:[B

    goto :goto_0

    .line 51
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->genre:[B

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->trackNo:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    .line 66
    const-string v1, "Version 1.0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_0
    const-string/jumbo v1, "title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->title:[B

    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nartist : "

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->artist:[B

    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nalbum : "

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->album:[B

    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ngenre : "

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->genre:[B

    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nyear : "

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->year:[B

    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ntrack number : "

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->trackNo:[B

    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncomment : "

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/id3v1/ID3v1Tag;->comment:[B

    invoke-static {v2}, Lcom/samsung/android/app/music/common/metaedit/MetaUtils;->hexToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 68
    :cond_0
    const-string v1, "Version 1.1\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
