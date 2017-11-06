.class Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$1;
.super Ljava/lang/Object;
.source "SendErrorLogWorker.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->create()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "upload_log_file"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->executeLogCat(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/worker/SendErrorLogWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/logs/upload_log_file.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 33
    return-void
.end method
