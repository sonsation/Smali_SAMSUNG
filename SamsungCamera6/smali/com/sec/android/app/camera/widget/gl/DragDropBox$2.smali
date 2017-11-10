.class Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;
.super Ljava/lang/Object;
.source "DragDropBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

.field final synthetic val$view:Lcom/samsung/android/glview/GLView;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/DragDropBox;FFLcom/samsung/android/glview/GLView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->val$x:F

    iput p3, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->val$y:F

    iput-object p4, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->val$view:Lcom/samsung/android/glview/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->resetScale()V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v2, v2, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->access$201(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->val$x:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->val$y:F

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->access$300(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getDroppable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->cancelDrag()V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->access$400(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)Lcom/samsung/android/glview/GLView$DragListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->access$500(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)Lcom/samsung/android/glview/GLView$DragListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->val$view:Lcom/samsung/android/glview/GLView;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->val$x:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->val$y:F

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLView$DragListener;->onDragEnd(Lcom/samsung/android/glview/GLView;FF)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;->onDragEndItemInDragDropBox(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onTouchOver(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v2, v2, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v1, v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->cancelDrag()V

    goto :goto_0
.end method
