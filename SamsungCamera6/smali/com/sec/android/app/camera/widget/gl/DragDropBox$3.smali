.class Lcom/sec/android/app/camera/widget/gl/DragDropBox$3;
.super Ljava/lang/Object;
.source "DragDropBox.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/DragDropBox;->relocateItem(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Lcom/samsung/android/glview/GLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$3;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$3;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->access$602(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$3;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setDroppable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$3;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox$3;->this$0:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
