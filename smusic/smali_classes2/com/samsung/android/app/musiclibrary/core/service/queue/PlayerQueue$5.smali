.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$5;
.super Ljava/lang/Object;
.source "PlayerQueue.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->internalEnqueue(Ljava/util/List;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$5;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([JLjava/util/List;)V
    .locals 3
    .param p1, "list"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v2, 0x0

    .line 2213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue$5;->val$action:I

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;->enqueue([JIZI)V

    .line 2214
    return-void
.end method
