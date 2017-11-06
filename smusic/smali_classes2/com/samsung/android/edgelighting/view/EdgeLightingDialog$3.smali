.class Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;
.super Ljava/lang/Object;
.source "EdgeLightingDialog.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$OnEdgeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickToast()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$400(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;->onClickToastInWindow()V

    .line 457
    :cond_0
    return-void
.end method

.method public onFinishAnimation()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$200(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$200(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$200(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .line 447
    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$300(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$100(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V

    .line 450
    :cond_2
    return-void
.end method
