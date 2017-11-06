.class Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceEdgeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    const-string v3, "mlstatus"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$202(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0
.end method
