.class public Lcom/mezzo/common/network/request/RequestMovie;
.super Lcom/mezzo/common/network/request/RequestNTCommon;
.source "RequestMovie.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/request/RequestMovie;->setContext(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0, p3}, Lcom/mezzo/common/network/request/RequestMovie;->setMsg(Landroid/os/Message;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/mezzo/common/network/request/RequestMovie;->setUrl(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/mezzo/common/network/parser/ParserMovie;

    invoke-direct {v0}, Lcom/mezzo/common/network/parser/ParserMovie;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/request/RequestMovie;->setParser(Lcom/mezzo/common/network/parser/ParserNTCommon;)V

    .line 15
    return-void
.end method
