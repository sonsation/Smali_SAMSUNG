.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;
.super Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/SemEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingCallbackDelegate"
.end annotation


# static fields
.field private static final MSG_EDGE_LIGHTING_START:I = 0x0

.field private static final MSG_EDGE_LIGHTING_STARTED:I = 0x2

.field private static final MSG_EDGE_LIGHTING_STOP:I = 0x1

.field private static final MSG_EDGE_LIGHTING_STOPPED:I = 0x3


# instance fields
.field private final mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

.field final synthetic this$0:Lcom/samsung/android/edge/SemEdgeManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/edge/SemEdgeManager;
    .param p2, "callback"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    .line 370
    new-instance v0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-get0(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 366
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/edge/SemEdgeManager;
    .param p2, "listener"    # Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->this$0:Lcom/samsung/android/edge/SemEdgeManager;

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    .line 394
    iput-object p2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    .line 395
    new-instance v0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;

    invoke-static {p1}, Lcom/samsung/android/edge/SemEdgeManager;->-get0(Lcom/samsung/android/edge/SemEdgeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$2;-><init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 391
    return-void
.end method


# virtual methods
.method getCallback()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mCallback:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingCallback;

    return-object v0
.end method

.method getListener()Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mListener:Lcom/samsung/android/edge/SemEdgeManager$OnEdgeLightingListener;

    return-object v0
.end method

.method public onEdgeLightingStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    return-void
.end method

.method public onEdgeLightingStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    return-void
.end method

.method public onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v2, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 426
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void
.end method

.method public onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 434
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 431
    return-void
.end method
