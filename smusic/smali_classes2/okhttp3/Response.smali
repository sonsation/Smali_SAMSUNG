.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field private final body:Lokhttp3/ResponseBody;

.field private volatile cacheControl:Lokhttp3/CacheControl;

.field private cacheResponse:Lokhttp3/Response;

.field private final code:I

.field private final handshake:Lokhttp3/Handshake;

.field private final headers:Lokhttp3/Headers;

.field private final message:Ljava/lang/String;

.field private networkResponse:Lokhttp3/Response;

.field private final priorResponse:Lokhttp3/Response;

.field private final protocol:Lokhttp3/Protocol;

.field private final request:Lokhttp3/Request;


# direct methods
.method private constructor <init>(Lokhttp3/Response$Builder;)V
    .locals 1
    .param p1, "builder"    # Lokhttp3/Response$Builder;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$000(Lokhttp3/Response$Builder;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 54
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$100(Lokhttp3/Response$Builder;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    .line 55
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$200(Lokhttp3/Response$Builder;)I

    move-result v0

    iput v0, p0, Lokhttp3/Response;->code:I

    .line 56
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$300(Lokhttp3/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$400(Lokhttp3/Response$Builder;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    .line 58
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$500(Lokhttp3/Response$Builder;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 59
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$600(Lokhttp3/Response$Builder;)Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 60
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$700(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    .line 61
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$800(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    .line 62
    invoke-static {p1}, Lokhttp3/Response$Builder;->access$900(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Response$Builder;Lokhttp3/Response$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/Response$Builder;
    .param p2, "x1"    # Lokhttp3/Response$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lokhttp3/Response;-><init>(Lokhttp3/Response$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object v0
.end method

.method static synthetic access$1200(Lokhttp3/Response;)Lokhttp3/Protocol;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic access$1300(Lokhttp3/Response;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget v0, p0, Lokhttp3/Response;->code:I

    return v0
.end method

.method static synthetic access$1400(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lokhttp3/Response;)Lokhttp3/Handshake;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method static synthetic access$1600(Lokhttp3/Response;)Lokhttp3/Headers;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$1700(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic access$1800(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->networkResponse:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic access$1900(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->cacheResponse:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic access$2000(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1
    .param p0, "x0"    # Lokhttp3/Response;

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/Response;->priorResponse:Lokhttp3/Response;

    return-object v0
.end method


# virtual methods
.method public body()Lokhttp3/ResponseBody;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lokhttp3/CacheControl;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    .line 235
    .local v0, "result":Lokhttp3/CacheControl;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lokhttp3/CacheControl;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lokhttp3/CacheControl;
    :cond_0
    iget-object v1, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-static {v1}, Lokhttp3/CacheControl;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lokhttp3/CacheControl;
    iput-object v0, p0, Lokhttp3/Response;->cacheControl:Lokhttp3/CacheControl;

    goto :goto_0
.end method

.method public code()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lokhttp3/Response;->code:I

    return v0
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/Response;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    invoke-virtual {v1, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lokhttp3/Response$Builder;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lokhttp3/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;Lokhttp3/Response$1;)V

    return-object v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 246
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
