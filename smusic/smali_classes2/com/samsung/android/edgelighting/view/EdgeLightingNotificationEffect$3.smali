.class Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;
.super Landroid/os/Handler;
.source "EdgeLightingNotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v2, 0x0

    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$300(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)Lcom/samsung/android/edgelighting/view/MorphView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->show(J)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$300(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)Lcom/samsung/android/edgelighting/view/MorphView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->hide(J)V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mListener:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;->onFinishAnimation()V

    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$400(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$400(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->hide()V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
