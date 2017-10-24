.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;
.super Landroid/os/Handler;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;)V
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
    .line 370
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 373
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v4}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 374
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 376
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 377
    .local v1, "param":Landroid/os/Bundle;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "pn":Ljava/lang/String;
    const-string/jumbo v4, "info"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 379
    .local v0, "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v4}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v3, v0, v5}, Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    goto :goto_0

    .line 382
    .end local v0    # "info":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .end local v1    # "param":Landroid/os/Bundle;
    .end local v3    # "pn":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 383
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v4}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
