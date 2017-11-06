.class Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$3;
.super Ljava/lang/Object;
.source "ServiceEdgeAnimationController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/core/edgelighting/IEdgeLightingResPolicy;)V
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
    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$302(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;Z)Z

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    .line 137
    return-void
.end method
