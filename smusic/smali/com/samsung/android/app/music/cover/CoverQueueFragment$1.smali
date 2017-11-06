.class Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;
.super Ljava/lang/Object;
.source "CoverQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Z)V
    .locals 3
    .param p1, "isOpen"    # Z

    .prologue
    .line 82
    sget-object v0, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$000(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$1;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$100(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    .line 87
    :cond_0
    return-void
.end method
