.class public Lcom/mezzo/common/network/request/RequestNTCommon;
.super Ljava/lang/Object;
.source "RequestNTCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;,
        Lcom/mezzo/common/network/request/RequestNTCommon$METHOD;
    }
.end annotation


# static fields
.field private static final TIMEOUT:I = 0x1388


# instance fields
.field private body:Ljava/lang/String;

.field private connectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

.field private context:Landroid/content/Context;

.field private msg:Landroid/os/Message;

.field private parser:Lcom/mezzo/common/network/parser/ParserNTCommon;

.field private result:Ljava/lang/Object;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mezzo/common/network/request/RequestNTCommon;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/mezzo/common/network/request/RequestNTCommon;->errorCheck(Ljava/lang/String;)V

    return-void
.end method

.method private errorCheck(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method private networkFail(Landroid/os/Handler;ZLjava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "isError"    # Z
    .param p3, "errorLog"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lcom/mezzo/common/network/request/RequestNTCommon$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/mezzo/common/network/request/RequestNTCommon$3;-><init>(Lcom/mezzo/common/network/request/RequestNTCommon;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method private proessWork(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "isError"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getParser()Lcom/mezzo/common/network/parser/ParserNTCommon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getParser()Lcom/mezzo/common/network/parser/ParserNTCommon;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/mezzo/common/network/parser/ParserNTCommon;->doParser(Landroid/content/Context;Ljava/io/InputStream;)Z

    move-result v0

    .line 59
    .local v0, "isParser":Z
    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getParser()Lcom/mezzo/common/network/parser/ParserNTCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/parser/ParserNTCommon;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mezzo/common/network/request/RequestNTCommon;->setResult(Ljava/lang/Object;)V

    .line 60
    new-instance v1, Lcom/mezzo/common/network/request/RequestNTCommon$1;

    invoke-direct {v1, p0, v0, p1, p4}, Lcom/mezzo/common/network/request/RequestNTCommon$1;-><init>(Lcom/mezzo/common/network/request/RequestNTCommon;ZLandroid/content/Context;Z)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    .end local v0    # "isParser":Z
    :goto_0
    return-void

    .line 79
    :cond_0
    if-eqz p4, :cond_1

    .line 80
    const-string v1, "code Error"

    invoke-direct {p0, v1}, Lcom/mezzo/common/network/request/RequestNTCommon;->errorCheck(Ljava/lang/String;)V

    .line 82
    :cond_1
    new-instance v1, Lcom/mezzo/common/network/request/RequestNTCommon$2;

    invoke-direct {v1, p0, p1}, Lcom/mezzo/common/network/request/RequestNTCommon$2;-><init>(Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->connectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    return-object v0
.end method

.method public getConnectionTimeOut()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x1388

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "GET"

    return-object v0
.end method

.method public getMsg()Landroid/os/Message;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->msg:Landroid/os/Message;

    return-object v0
.end method

.method public getParser()Lcom/mezzo/common/network/parser/ParserNTCommon;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->parser:Lcom/mezzo/common/network/parser/ParserNTCommon;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getSocketTimeOut()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x1388

    return v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 4

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "result":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Ljava/net/URL;
    .local v2, "result":Ljava/net/URL;
    move-object v1, v2

    .line 159
    .end local v2    # "result":Ljava/net/URL;
    .restart local v1    # "result":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->url:Ljava/lang/String;

    return-object v0
.end method

.method public onInternetNotSupport()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getConnectionListener()Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getMsg()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2}, Lcom/mezzo/common/network/request/OnConnectionListener;->onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V

    .line 140
    :cond_0
    return-void
.end method

.method public process(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "isError"    # Z

    .prologue
    .line 93
    if-eqz p2, :cond_0

    .line 95
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mezzo/common/network/request/RequestNTCommon;->proessWork(Landroid/content/Context;Ljava/io/InputStream;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NETWORK_FAIL"

    invoke-direct {p0, p3, p4, v1}, Lcom/mezzo/common/network/request/RequestNTCommon;->networkFail(Landroid/os/Handler;ZLjava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "SERVER_FAIL"

    invoke-direct {p0, p3, p4, v1}, Lcom/mezzo/common/network/request/RequestNTCommon;->networkFail(Landroid/os/Handler;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->body:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V
    .locals 0
    .param p1, "connectionListener"    # Lcom/mezzo/common/network/request/OnConnectionListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->connectionListener:Lcom/mezzo/common/network/request/OnConnectionListener;

    .line 54
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->context:Landroid/content/Context;

    .line 189
    return-void
.end method

.method public setMsg(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->msg:Landroid/os/Message;

    .line 205
    return-void
.end method

.method public setParser(Lcom/mezzo/common/network/parser/ParserNTCommon;)V
    .locals 0
    .param p1, "parser"    # Lcom/mezzo/common/network/parser/ParserNTCommon;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->parser:Lcom/mezzo/common/network/parser/ParserNTCommon;

    .line 197
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->result:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "request url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/mezzo/common/network/request/RequestNTCommon;->url:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request : ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "TimeOut: 5000\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/request/RequestNTCommon;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
