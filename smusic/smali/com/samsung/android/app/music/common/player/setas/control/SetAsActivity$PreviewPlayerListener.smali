.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$PreviewPlayerListener;
.super Ljava/lang/Object;
.source "SetAsActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewPlayerListener"
.end annotation


# instance fields
.field private final mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$PreviewPlayerListener;->mParent:Ljava/lang/ref/WeakReference;

    .line 499
    return-void
.end method


# virtual methods
.method public onAvailableRecommendation(Z)V
    .locals 0
    .param p1, "isAvailable"    # Z

    .prologue
    .line 519
    return-void
.end method

.method public onCompletion()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public onPlayReady()V
    .locals 4

    .prologue
    .line 503
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$PreviewPlayerListener;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .line 504
    .local v0, "activity":Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;
    if-eqz v0, :cond_0

    .line 505
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$200(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;J)V

    .line 507
    :cond_0
    return-void
.end method
