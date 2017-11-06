.class Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;
.super Ljava/lang/Object;
.source "ActivityTranslucentController.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;->this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;-><init>(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 135
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;->this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->access$300(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;->this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->access$400(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;->this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->access$302(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;Z)Z

    .line 127
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$TransitionListener;->this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->access$302(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;Z)Z

    .line 144
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 152
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 115
    return-void
.end method
