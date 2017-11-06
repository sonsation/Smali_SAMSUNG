.class Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing$1;
.super Landroid/os/Handler;
.source "MusicProgressBarScrubbing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing$1;->this$0:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing$1;->this$0:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->access$000(Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;)V

    .line 225
    return-void
.end method
