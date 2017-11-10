.class Lcom/sec/android/app/camera/menu/OverlayHelp$14;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->createPalmCaptureGuide()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$14;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$14;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$14;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$600(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$14;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$14;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$2000(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
