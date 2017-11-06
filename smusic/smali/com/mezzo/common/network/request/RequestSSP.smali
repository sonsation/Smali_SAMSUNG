.class public Lcom/mezzo/common/network/request/RequestSSP;
.super Lcom/mezzo/common/network/request/RequestNTCommon;
.source "RequestSSP.java"


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
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/request/RequestSSP;->setContext(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0, p3}, Lcom/mezzo/common/network/request/RequestSSP;->setMsg(Landroid/os/Message;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/mezzo/common/network/request/RequestSSP;->setUrl(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/mezzo/common/network/parser/ParserSSP;

    invoke-direct {v0}, Lcom/mezzo/common/network/parser/ParserSSP;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/request/RequestSSP;->setParser(Lcom/mezzo/common/network/parser/ParserNTCommon;)V

    .line 15
    return-void
.end method
