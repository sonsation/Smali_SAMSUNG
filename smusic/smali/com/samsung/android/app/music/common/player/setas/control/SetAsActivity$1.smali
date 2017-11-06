.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
.source "SetAsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->initPreviewPlayerInternal(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;
    .param p2, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onProgressFinished()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->onProgressFinished()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1$2;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method protected onProgressStarted()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->onProgressStarted()V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1$1;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method
