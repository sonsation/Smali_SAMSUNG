.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayVolumeKeyListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;


# direct methods
.method public constructor <init>(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 870
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 871
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 869
    return-void

    .line 870
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 880
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 886
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 887
    .local v0, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 885
    :goto_0
    return-void

    .line 890
    :pswitch_0
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "onVolumeKeyDown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    invoke-interface {v1}, Landroid/hardware/display/SemDisplayVolumeKeyListener;->onVolumeKeyDown()V

    goto :goto_0

    .line 896
    :pswitch_1
    const-string/jumbo v1, "DisplayManager"

    const-string/jumbo v2, "onVolumeKeyUp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    invoke-interface {v1}, Landroid/hardware/display/SemDisplayVolumeKeyListener;->onVolumeKeyUp()V

    goto :goto_0

    .line 887
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendDisplayVolumeKeyEvent(Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .prologue
    .line 875
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 876
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 877
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 874
    return-void
.end method
