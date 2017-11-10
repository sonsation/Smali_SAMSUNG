.class Lcom/sec/android/app/camera/menu/OverlayHelp$15;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->removeHRMSensorCaptureGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$15;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$15;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$15;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$15;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$15;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$15;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$15;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$702(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)Landroid/view/View;

    :cond_1
    return-void
.end method
