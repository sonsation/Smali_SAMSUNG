.class Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler$1;
.super Ljava/lang/Object;
.source "NormalVolumeControlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

.field final synthetic val$fineVolume:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler$1;->this$1:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    iput p2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler$1;->val$fineVolume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler$1;->this$1:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;

    iget-object v1, v0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    iget v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$AdjustVolumeThreadHandler$1;->val$fineVolume:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$500(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Z)V

    .line 388
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
