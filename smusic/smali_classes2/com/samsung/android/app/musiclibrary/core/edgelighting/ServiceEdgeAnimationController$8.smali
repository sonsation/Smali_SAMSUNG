.class Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$8;
.super Ljava/lang/Object;
.source "ServiceEdgeAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->updateEdgeAnimation(Z)V
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
    .line 341
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$8;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController$8;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/edgelighting/ServiceEdgeAnimationController;)V

    .line 345
    return-void
.end method
