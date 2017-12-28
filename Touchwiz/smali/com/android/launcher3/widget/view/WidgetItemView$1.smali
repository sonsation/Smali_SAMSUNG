.class Lcom/android/launcher3/widget/view/WidgetItemView$1;
.super Ljava/lang/Object;
.source "WidgetItemView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetItemView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/view/WidgetItemView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetItemView$1;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView$1;->this$0:Lcom/android/launcher3/widget/view/WidgetItemView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetItemView;->uninstallExitIconAnimationEnd()V

    .line 102
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 97
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 93
    return-void
.end method
