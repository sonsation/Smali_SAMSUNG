.class Lcom/android/server/desktopmode/ToastManager$H$1;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/ToastManager$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/desktopmode/ToastManager$H;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/ToastManager$H;Landroid/widget/Toast;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/ToastManager$H$1;->this$1:Lcom/android/server/desktopmode/ToastManager$H;

    iput-object p2, p0, Lcom/android/server/desktopmode/ToastManager$H$1;->val$toast:Landroid/widget/Toast;

    iput-object p3, p0, Lcom/android/server/desktopmode/ToastManager$H$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/ToastManager$H$1;->this$1:Lcom/android/server/desktopmode/ToastManager$H;

    iget-object v0, v0, Lcom/android/server/desktopmode/ToastManager$H;->this$0:Lcom/android/server/desktopmode/ToastManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/ToastManager;->-get2(Lcom/android/server/desktopmode/ToastManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/ToastManager$H$1;->val$toast:Landroid/widget/Toast;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/ToastManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toast.onViewDetachedFromWindow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/ToastManager$H$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mToasts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/ToastManager$H$1;->this$1:Lcom/android/server/desktopmode/ToastManager$H;

    iget-object v2, v2, Lcom/android/server/desktopmode/ToastManager$H;->this$0:Lcom/android/server/desktopmode/ToastManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/ToastManager;->-get2(Lcom/android/server/desktopmode/ToastManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
