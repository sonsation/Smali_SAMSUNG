.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;
.super Landroid/database/ContentObserver;
.source "PlayerQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 752
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    .line 753
    .local v0, "currentUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    const-string v1, "SV-List"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "meta changed uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selfChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->reloadMeta()V

    .line 756
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->getCurrentBaseUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;)[J

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;Landroid/net/Uri;[JZI)V

    .line 759
    :cond_0
    return-void
.end method
