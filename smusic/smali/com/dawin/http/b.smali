.class public Lcom/dawin/http/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/http/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/dawin/http/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dawin/http/b$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/dawin/http/b$a;

    .prologue
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/dawin/http/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dawin/http/b;->e:Lcom/dawin/http/b$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doin background Start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/dawin/http/b;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "result":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/http/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dawin/http/b;->a:Landroid/content/Context;

    iget v4, p0, Lcom/dawin/http/b;->c:I

    invoke-static {v2, v1, v3, v4}, Lcom/dawin/http/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/dawin/http/b;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dawin/http/b;->d:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doin background End "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/dawin/http/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v2, "url null or empty!!"

    invoke-static {v2}, Lcom/dawin/util/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "request"    # I

    .prologue
    iput p1, p0, Lcom/dawin/http/b;->c:I

    return-void
.end method

.method protected a(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPostExecute - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/dawin/http/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .local v0, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/dawin/http/b;->e:Lcom/dawin/http/b$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/http/b;->e:Lcom/dawin/http/b$a;

    iget v2, p0, Lcom/dawin/http/b;->c:I

    iget-object v3, p0, Lcom/dawin/http/b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v3}, Lcom/dawin/http/b$a;->a(ILorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .end local v0    # "status":I
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "status":I
    :cond_1
    iget-object v1, p0, Lcom/dawin/http/b;->e:Lcom/dawin/http/b$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/http/b;->e:Lcom/dawin/http/b$a;

    iget v2, p0, Lcom/dawin/http/b;->c:I

    invoke-interface {v1, v2, v0, p1}, Lcom/dawin/http/b$a;->a(IILorg/apache/http/HttpResponse;)V

    goto :goto_0

    .end local v0    # "status":I
    :cond_2
    iget-object v1, p0, Lcom/dawin/http/b;->e:Lcom/dawin/http/b$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/http/b;->e:Lcom/dawin/http/b$a;

    iget v2, p0, Lcom/dawin/http/b;->c:I

    const/16 v3, -0x12c

    invoke-interface {v1, v2, v3, p1}, Lcom/dawin/http/b$a;->a(IILorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method

.method public b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v1, 0x0

    .local v1, "is":Ljava/io/InputStream;
    const-string v5, ""

    .local v5, "xmlStringResult":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string/jumbo v7, "utf-8"

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x8

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-object v5

    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dawin/http/b;->a([Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/dawin/http/b;->a(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreExecute() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dawin/http/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    return-void
.end method
