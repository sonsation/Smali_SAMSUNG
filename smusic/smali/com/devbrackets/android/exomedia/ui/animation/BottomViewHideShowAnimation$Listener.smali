.class Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;
.super Ljava/lang/Object;
.source "BottomViewHideShowAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;->this$0:Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;
    .param p2, "x1"    # Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;-><init>(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;->this$0:Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->access$100(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;->this$0:Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->access$200(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 91
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation$Listener;->this$0:Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;->access$100(Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void
.end method
