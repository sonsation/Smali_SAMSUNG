.class Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;
.super Ljava/lang/Object;
.source "TopViewHideShowAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;->this$0:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;
    .param p2, "x1"    # Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;-><init>(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;->this$0:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->access$100(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;->this$0:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->access$200(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 79
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;->this$0:Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->access$100(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    return-void
.end method
