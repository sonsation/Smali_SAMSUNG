.class Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;
.super Ljava/lang/Object;
.source "IPlayerQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;J)J

    .line 397
    const-string v0, "SV-List"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do run ! mLastLoadCompleteTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;->onContentChanged(Landroid/net/Uri;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->access$302(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;Z)Z

    .line 402
    return-void
.end method
