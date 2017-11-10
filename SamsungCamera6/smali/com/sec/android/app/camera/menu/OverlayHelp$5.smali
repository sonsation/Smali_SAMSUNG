.class Lcom/sec/android/app/camera/menu/OverlayHelp$5;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->createHRMSensorCaptureGuide()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$5;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$5;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$300(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$5;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->hideHelp(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$5;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$400(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$5;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$400(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;->onOverlayHelpHide()V

    :cond_0
    return-void
.end method
