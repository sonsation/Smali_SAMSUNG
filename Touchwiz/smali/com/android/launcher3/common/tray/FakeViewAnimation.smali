.class Lcom/android/launcher3/common/tray/FakeViewAnimation;
.super Ljava/lang/Object;
.source "FakeViewAnimation.java"


# instance fields
.field private mFakeViewAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation;->mFakeViewAnimators:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/tray/FakeViewAnimation;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeViewAnimation;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation;->mFakeViewAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private getAlphaAnimation(Landroid/view/View;IZ)Landroid/animation/Animator;
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "toTranslationY"    # I
    .param p3, "toBeShown"    # Z

    .prologue
    .line 65
    if-eqz p3, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 66
    .local v5, "alpha":F
    :goto_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v5, v1, v2

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 67
    .local v6, "animation":Landroid/animation/Animator;
    new-instance v0, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/tray/FakeViewAnimation$1;-><init>(Lcom/android/launcher3/common/tray/FakeViewAnimation;Landroid/view/View;ZIF)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 92
    return-object v6

    .line 65
    .end local v5    # "alpha":F
    .end local v6    # "animation":Landroid/animation/Animator;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animate(Landroid/view/View;IZI)V
    .locals 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "toTranslationY"    # I
    .param p3, "toBeShown"    # Z
    .param p4, "duration"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation;->mFakeViewAnimators:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 38
    .local v1, "oldAnimation":Landroid/animation/Animator;
    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {v1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_4

    const/4 v2, 0x1

    .line 40
    .local v2, "oldToBeShown":Z
    :goto_1
    if-eq v2, p3, :cond_0

    .line 45
    .end local v2    # "oldToBeShown":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/tray/FakeViewAnimation;->cancel(Landroid/view/View;)V

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/tray/FakeViewAnimation;->getAlphaAnimation(Landroid/view/View;IZ)Landroid/animation/Animator;

    move-result-object v0

    .line 48
    .local v0, "animation":Landroid/animation/Animator;
    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    int-to-long v6, p4

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 50
    if-eqz p3, :cond_3

    const-wide/16 v4, 0x1

    :cond_3
    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 51
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 53
    iget-object v3, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation;->mFakeViewAnimators:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    .end local v0    # "animation":Landroid/animation/Animator;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public cancel(Landroid/view/View;)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation;->mFakeViewAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 58
    .local v0, "animation":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeViewAnimation;->mFakeViewAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 62
    :cond_0
    return-void
.end method
