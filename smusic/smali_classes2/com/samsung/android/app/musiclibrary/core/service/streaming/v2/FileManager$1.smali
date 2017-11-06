.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager$1;
.super Landroid/util/LruCache;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/util/Pair",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;",
        "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;
    .param p2, "x0"    # I

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/util/Pair;

    check-cast p4, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager$1;->entryRemoved(ZLjava/lang/String;Landroid/util/Pair;Landroid/util/Pair;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/util/Pair;Landroid/util/Pair;)V
    .locals 2
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "oldValue":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    .local p4, "newValue":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;>;"
    if-eqz p3, :cond_0

    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Print mRequestPare entryRemoved evicted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but it is current playing item, thus put it again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager;->access$100(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;->active(Z)V

    goto :goto_0
.end method
