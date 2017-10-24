.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;
.super Landroid/os/Handler;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 401
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get1(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;->onEdgeLightingStarted()V

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get1(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;->onEdgeLightingStopped()V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
