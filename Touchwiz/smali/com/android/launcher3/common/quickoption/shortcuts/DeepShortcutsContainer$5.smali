.class Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeepShortcutsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->animateClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$5;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$5;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->access$402(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$5;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->access$500(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$5;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->setVisibility(I)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$5;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->close()V

    goto :goto_0
.end method
