.class public Lcom/samsung/android/scloud/oem/lib/JSONReader;
.super Ljava/lang/Object;
.source "JSONReader.java"


# instance fields
.field private buf:I

.field private inputStreamReader:Ljava/io/Reader;

.field private isJSONArray:Z

.field private preBuf:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "inputStreamReader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->inputStreamReader:Ljava/io/Reader;

    .line 59
    :goto_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 63
    iget v0, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->preBuf:I

    goto :goto_0

    .line 75
    :cond_0
    iget v0, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->isJSONArray:Z

    .line 79
    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->isJSONArray:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This is not JSON stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    :cond_2
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 243
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "name"

    const-string v3, "asdf{}{}{{}"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v2, "val"

    const-string v3, "asdf\"{adsf}\"\"\"}\"{"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v2, "jsonstr"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    new-instance v0, Lcom/samsung/android/scloud/oem/lib/JSONReader;

    new-instance v2, Ljava/io/StringReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/scloud/oem/lib/JSONReader;-><init>(Ljava/io/Reader;)V

    .line 259
    .local v0, "jr":Lcom/samsung/android/scloud/oem/lib/JSONReader;
    invoke-virtual {v0}, Lcom/samsung/android/scloud/oem/lib/JSONReader;->getJSONObjectInArray()Lorg/json/JSONObject;

    .line 263
    return-void
.end method


# virtual methods
.method public getJSONObjectInArray()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x7b

    const/4 v6, -0x1

    .line 111
    iget-boolean v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->isJSONArray:Z

    if-nez v4, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "This is not JSON array stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v2, "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->inputStreamReader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    if-eq v4, v7, :cond_2

    .line 127
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    iput v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->preBuf:I

    .line 131
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    if-ne v4, v6, :cond_1

    .line 139
    :cond_2
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    if-ne v4, v6, :cond_4

    .line 219
    :cond_3
    :goto_0
    return-object v3

    .line 143
    :cond_4
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    const/4 v0, 0x1

    .line 155
    .local v0, "find":I
    const/4 v1, 0x1

    .line 159
    .local v1, "pass":I
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 163
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    iput v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->preBuf:I

    .line 167
    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->inputStreamReader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    .line 175
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    if-ne v4, v6, :cond_7

    .line 215
    :cond_6
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    if-eq v4, v6, :cond_3

    .line 219
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_7
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    const/16 v5, 0x22

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->preBuf:I

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_8

    mul-int/lit8 v1, v1, -0x1

    .line 195
    :cond_8
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    if-ne v4, v7, :cond_9

    if-lez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 199
    :cond_9
    iget v4, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->buf:I

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_5

    if-lez v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public isJSONArray()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/JSONReader;->isJSONArray:Z

    return v0
.end method
