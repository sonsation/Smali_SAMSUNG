.class public Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$BaseStaticHandler;
.super Landroid/os/Handler;
.source "MilkSearchBaseResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseStaticHandler"
.end annotation


# instance fields
.field private final mMsgHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V
    .locals 1
    .param p1, "msghandler"    # Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;

    .prologue
    .line 572
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 573
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$BaseStaticHandler;->mMsgHandler:Ljava/lang/ref/WeakReference;

    .line 574
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 578
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 579
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment$BaseStaticHandler;->mMsgHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;

    .line 580
    .local v0, "msgHandler":Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;
    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
