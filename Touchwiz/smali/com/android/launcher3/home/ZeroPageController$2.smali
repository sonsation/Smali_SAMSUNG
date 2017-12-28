.class Lcom/android/launcher3/home/ZeroPageController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZeroPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;

.field final synthetic val$pageChanged:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/ZeroPageController;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    iput-boolean p2, p0, Lcom/android/launcher3/home/ZeroPageController$2;->val$pageChanged:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 956
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0, v6}, Lcom/android/launcher3/home/ZeroPageController;->access$1002(Lcom/android/launcher3/home/ZeroPageController;Z)Z

    .line 957
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0, v6}, Lcom/android/launcher3/home/ZeroPageController;->access$1102(Lcom/android/launcher3/home/ZeroPageController;I)I

    .line 958
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0, v6}, Lcom/android/launcher3/home/ZeroPageController;->access$1202(Lcom/android/launcher3/home/ZeroPageController;I)I

    .line 959
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$1300(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    .line 960
    iget-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->val$pageChanged:Z

    if-eqz v0, :cond_1

    .line 961
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "start_from_zeropage"

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$2;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    .line 967
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ZPEN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 969
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->setZeroPageStartTime()V

    .line 971
    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController$2;->reset()V

    .line 953
    return-void
.end method
