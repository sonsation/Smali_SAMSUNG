.class public Lcom/mezzo/common/network/request/RequestInitInfo;
.super Lcom/mezzo/common/network/request/RequestNTCommon;
.source "RequestInitInfo.java"


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
    invoke-virtual {p0, p1}, Lcom/mezzo/common/network/request/RequestInitInfo;->setContext(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0, p3}, Lcom/mezzo/common/network/request/RequestInitInfo;->setMsg(Landroid/os/Message;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/mezzo/common/network/request/RequestInitInfo;->setUrl(Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/mezzo/common/network/parser/ParserInitInfo;

    invoke-direct {v0}, Lcom/mezzo/common/network/parser/ParserInitInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/request/RequestInitInfo;->setParser(Lcom/mezzo/common/network/parser/ParserNTCommon;)V

    .line 15
    return-void
.end method
