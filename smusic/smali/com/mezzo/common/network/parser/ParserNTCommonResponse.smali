.class public abstract Lcom/mezzo/common/network/parser/ParserNTCommonResponse;
.super Lcom/mezzo/common/network/parser/ParserNTCommon;
.source "ParserNTCommonResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mezzo/common/network/parser/ParserNTCommon;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doParser(Landroid/content/Context;Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected getResponse(Lorg/json/JSONObject;Lcom/mezzo/common/network/data/DataNTCommon;)Z
    .locals 1
    .param p1, "root"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lcom/mezzo/common/network/data/DataNTCommon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p2}, Lcom/mezzo/common/network/data/DataNTCommon;->clearResponse()V

    .line 22
    if-eqz p1, :cond_0

    .line 23
    const-string/jumbo v0, "version"

    invoke-virtual {p0, p1, v0}, Lcom/mezzo/common/network/parser/ParserNTCommonResponse;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mezzo/common/network/data/DataNTCommon;->setVersion(Ljava/lang/String;)V

    .line 24
    const-string v0, "error_code"

    invoke-virtual {p0, p1, v0}, Lcom/mezzo/common/network/parser/ParserNTCommonResponse;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mezzo/common/network/data/DataNTCommon;->setError_code(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getResult()Ljava/lang/Object;
.end method
