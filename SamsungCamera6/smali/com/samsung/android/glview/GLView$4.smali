.class Lcom/samsung/android/glview/GLView$4;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V
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

    iput-object p1, p0, Lcom/samsung/android/glview/GLView$4;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/glview/GLView$4;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v0, v0, Lcom/samsung/android/glview/GLView;->mAnimationEventListener:Lcom/samsung/android/glview/GLView$AnimationEventListener;

    iget-object v1, p0, Lcom/samsung/android/glview/GLView$4;->this$0:Lcom/samsung/android/glview/GLView;

    iget-object v2, p0, Lcom/samsung/android/glview/GLView$4;->this$0:Lcom/samsung/android/glview/GLView;

    invoke-static {v2}, Lcom/samsung/android/glview/GLView;->access$700(Lcom/samsung/android/glview/GLView;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/glview/GLView$AnimationEventListener;->onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V

    return-void
.end method
