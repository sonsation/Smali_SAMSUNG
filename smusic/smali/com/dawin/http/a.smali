.class public Lcom/dawin/http/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/http/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/http/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dawin/http/a$a;

.field private c:Lcom/dawin/http/b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/http/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dawin/http/a;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNetworkConnected => true / Network : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNetworkConnected => false / Network : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "isNetworkConnected => false"

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const-string v1, "clearTask End"

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    .end local v0    # "i":I
    :cond_0
    return-void

    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/http/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dawin/http/b;->cancel(Z)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(IILorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "request"    # I
    .param p2, "resultCode"    # I
    .param p3, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    const-string v1, "Request error"

    invoke-interface {v0, p1, p2, v1}, Lcom/dawin/http/a$a;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/dawin/http/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/http/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    const/16 v1, -0x64

    const-string/jumbo v2, "\uc778\ud130\ub137 \uc5f0\uacb0 \uc624\ub958"

    invoke-interface {v0, p1, v1, v2}, Lcom/dawin/http/a$a;->a(IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/dawin/http/b;

    iget-object v1, p0, Lcom/dawin/http/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/dawin/http/b;-><init>(Landroid/content/Context;Lcom/dawin/http/b$a;)V

    iput-object v0, p0, Lcom/dawin/http/a;->c:Lcom/dawin/http/b;

    iget-object v0, p0, Lcom/dawin/http/a;->c:Lcom/dawin/http/b;

    invoke-virtual {v0, p1}, Lcom/dawin/http/b;->a(I)V

    iget-object v0, p0, Lcom/dawin/http/a;->c:Lcom/dawin/http/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/dawin/http/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dawin/http/a;->c:Lcom/dawin/http/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(ILorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "extractString"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/dawin/http/a$a;->a(ILorg/apache/http/HttpResponse;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/dawin/http/a$a;)V
    .locals 0
    .param p1, "l"    # Lcom/dawin/http/a$a;

    .prologue
    iput-object p1, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    return-void
.end method
