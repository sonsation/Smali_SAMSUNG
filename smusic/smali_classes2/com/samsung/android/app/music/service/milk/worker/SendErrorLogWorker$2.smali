.class Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$2;
.super Ljava/lang/Object;
.source "SendErrorLogWorker.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->doWorkInternal()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Lrx/Observable",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$2;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lrx/Observable;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "logFile":Ljava/io/File;
    const-string v3, "multipart/form-data"

    .line 44
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 45
    .local v0, "body":Lokhttp3/RequestBody;
    const-string v3, "logFile"

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v2

    .line 47
    .local v2, "part":Lokhttp3/MultipartBody$Part;
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    iget v4, v4, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->mReqId:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v2, v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->uploadErrorLog(ILjava/util/Map;Lokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;)Lrx/Observable;

    move-result-object v3

    return-object v3
.end method
