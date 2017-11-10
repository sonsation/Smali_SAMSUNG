.class Lcom/samsung/android/glview/GLView$3;
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

    iput-object p1, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

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

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v0, v0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-static {v0}, Lcom/samsung/android/glview/GLView;->access$300(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v0, v0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v0, v0, Lcom/samsung/android/glview/GLView;->mLongClickListener:Lcom/samsung/android/glview/GLView$LongClickListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v1, v1, Lcom/samsung/android/glview/GLView;->mThis:Lcom/samsung/android/glview/GLView;

    invoke-interface {v0, v1}, Lcom/samsung/android/glview/GLView$LongClickListener;->onLongClick(Lcom/samsung/android/glview/GLView;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-static {v0}, Lcom/samsung/android/glview/GLView;->access$400(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v0, v0, Lcom/samsung/android/glview/GLView;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-static {v1}, Lcom/samsung/android/glview/GLView;->access$600(Lcom/samsung/android/glview/GLView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLView$3;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-static {v2}, Lcom/samsung/android/glview/GLView;->access$500(Lcom/samsung/android/glview/GLView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
