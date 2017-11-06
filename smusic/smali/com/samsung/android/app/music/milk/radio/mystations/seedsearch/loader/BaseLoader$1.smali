.class Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;
.super Ljava/lang/Object;
.source "BaseLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->loadInBackground()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;

.field final synthetic val$e:Ljava/lang/InterruptedException;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;Ljava/lang/InterruptedException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;

    .prologue
    .line 120
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;->val$e:Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->cancelLoad()Z

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadInBackground : Canceling load. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " worker background thread interrupted while waiting for all search network request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader$1;->val$e:Ljava/lang/InterruptedException;

    .line 130
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method
