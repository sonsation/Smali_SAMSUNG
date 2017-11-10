.class Lcom/samsung/android/glview/GLView$1;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLView;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v0, v0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v0, v0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-static {v0}, Lcom/samsung/android/glview/GLView;->access$000(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/glview/GLView;->mDragging:Z

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v0, v0, Lcom/samsung/android/glview/GLView;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v1, v1, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-static {v2}, Lcom/samsung/android/glview/GLView;->access$100(Lcom/samsung/android/glview/GLView;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLView$1;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-static {v3}, Lcom/samsung/android/glview/GLView;->access$200(Lcom/samsung/android/glview/GLView;)F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLView$DragListener;->onDragStart(Lcom/samsung/android/glview/GLView;FF)V

    goto :goto_0
.end method
