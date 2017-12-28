.class public Lcom/android/launcher3/util/animation/LauncherAnimUtils;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"


# static fields
.field static sAnimators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static sEndAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    .line 33
    new-instance v0, Lcom/android/launcher3/util/animation/LauncherAnimUtils$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelOnDestroyActivity(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "a"    # Landroid/animation/Animator;

    .prologue
    .line 51
    sget-object v0, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->sEndAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    return-void
.end method

.method public static createAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 91
    .local v0, "anim":Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 92
    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Landroid/view/View;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 103
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 104
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 107
    invoke-static {v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 108
    new-instance v1, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 109
    return-object v0
.end method

.method public static varargs ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "target"    # Landroid/view/View;
    .param p1, "values"    # [F

    .prologue
    .line 96
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 97
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 98
    invoke-static {v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 99
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Landroid/view/View;
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 114
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 115
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 117
    invoke-static {v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 118
    new-instance v1, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 119
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 124
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 125
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 127
    invoke-static {v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    .line 128
    new-instance v1, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/util/animation/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 129
    return-object v0
.end method

.method public static onDestroyActivity()V
    .locals 4

    .prologue
    .line 80
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v1, "animators":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 82
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 85
    :cond_0
    sget-object v3, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->sAnimators:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_1
    return-void
.end method

.method public static startAnimationAfterNextDraw(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 2
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/animation/LauncherAnimUtils$2;-><init>(Landroid/animation/Animator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 77
    return-void
.end method
