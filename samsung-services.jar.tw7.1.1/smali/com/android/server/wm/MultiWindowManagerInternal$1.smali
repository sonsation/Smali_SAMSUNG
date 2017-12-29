.class Lcom/android/server/wm/MultiWindowManagerInternal$1;
.super Ljava/lang/Object;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;->createKeepVisibleAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/MultiWindowManagerInternal;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$1;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 309
    invoke-static {}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManagerInternal"

    const-string v1, "keep_visible_animation onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 306
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 303
    invoke-static {}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManagerInternal"

    const-string v1, "keep_visible_animation onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    return-void
.end method
