.class Lcom/mapps/android/view/AdVideoPlayer$2;
.super Landroid/os/Handler;
.source "AdVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 225
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->adInterval:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v1, -0x3e8

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$3(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 234
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$4(Lcom/mapps/android/view/AdVideoPlayer;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v1, -0x64

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0
.end method
