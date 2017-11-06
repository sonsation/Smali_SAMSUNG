.class Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$10;
.super Ljava/lang/Object;
.source "ServiceEdgeAnimationController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


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
    .line 439
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$10;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 442
    const-string v0, "edge_lighting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$10;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$1402(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$10;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    .line 446
    :cond_0
    return-void
.end method
