.class Lcom/samsung/android/glview/GLButton$3;
.super Ljava/lang/Object;
.source "GLButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLButton;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLButton$3;->this$0:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton$3;->this$0:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDrawRippleEffect(Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton$3;->this$0:Lcom/samsung/android/glview/GLButton;

    iget-object v0, v0, Lcom/samsung/android/glview/GLButton;->mRippleEffect:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLButton$3;->this$0:Lcom/samsung/android/glview/GLButton;

    iget-object v0, v0, Lcom/samsung/android/glview/GLButton;->mRippleBackground:Lcom/samsung/android/glview/GLCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
