.class Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;
.super Landroid/os/Handler;
.source "EdgeToastContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/EdgeToastContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeToastContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v2, 0x0

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->access$000(Lcom/samsung/android/edgelighting/view/EdgeToastContainer;)Lcom/samsung/android/edgelighting/view/EdgeToastView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->show(J)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->access$000(Lcom/samsung/android/edgelighting/view/EdgeToastContainer;)Lcom/samsung/android/edgelighting/view/EdgeToastView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->hide(J)V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastContainer;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeToastContainer;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;->onFinishAnimation()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
