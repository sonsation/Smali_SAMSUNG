.class Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$4;
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

.field final synthetic val$view:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$4;->this$0:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$4;->val$view:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer$4;->val$view:Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;->setVisibility(I)V

    .line 594
    return-void
.end method
