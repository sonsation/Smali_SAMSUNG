.class Lcom/android/launcher3/widget/view/WidgetFolder$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetFolder;->animateClose(Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/view/WidgetFolder;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$3;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private animationComplete()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$3;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$200(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 181
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$3;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder$3;->animationComplete()V

    .line 177
    return-void
.end method
