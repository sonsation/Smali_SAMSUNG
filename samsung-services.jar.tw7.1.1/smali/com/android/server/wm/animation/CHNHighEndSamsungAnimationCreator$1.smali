.class Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator$1;
.super Ljava/lang/Object;
.source "CHNHighEndSamsungAnimationCreator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->createSamsungWallpaperEnterAnimation(I)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator$1;->this$0:Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 371
    const-string v0, "CHNHighEndSamsungAnimationCreator"

    const-string v1, "createSamsungWallpaperEnterAnimation onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator$1;->this$0:Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/animation/CHNHighEndSamsungAnimationCreator;->updateAppTransitionStartValues(Landroid/graphics/Rect;)V

    .line 370
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 376
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 366
    return-void
.end method
