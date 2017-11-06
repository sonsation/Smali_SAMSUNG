.class final Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$1;
.super Ljava/lang/Object;
.source "BackgroundFadeController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 70
    :pswitch_0
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->access$002(Z)Z

    .line 71
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/EdgeAnimationDisable;-><init>(Z)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sendEdgeAnimationState(Landroid/os/Parcelable;)V

    .line 73
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "send disable message"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
