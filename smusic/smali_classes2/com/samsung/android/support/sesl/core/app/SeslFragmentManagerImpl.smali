.class final Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
.source "SeslFragmentManager.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$FragmentTag;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final TAG:Ljava/lang/String; = "SeslFragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

.field mController:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40200000    # 2.5f

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 426
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    .line 524
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 851
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 852
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 853
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 854
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;-><init>()V

    .line 518
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    .line 533
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 534
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 536
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 1526
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 1527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1531
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1534
    :cond_1
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 874
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 875
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 876
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 877
    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .prologue
    .line 860
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 861
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 863
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 864
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 865
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 866
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 867
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 868
    const-wide/16 v2, 0xdc

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 869
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 870
    return-object v10
.end method

.method static modifiesAlpha(Landroid/view/animation/Animation;)Z
    .locals 4
    .param p0, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 544
    instance-of v3, p0, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    .line 554
    .end local p0    # "anim":Landroid/view/animation/Animation;
    .local v0, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .local v1, "i":I
    :cond_0
    :goto_0
    return v2

    .line 546
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    .restart local p0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    instance-of v3, p0, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_2

    .line 547
    check-cast p0, Landroid/view/animation/AnimationSet;

    .end local p0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 548
    .restart local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 549
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-nez v3, :cond_0

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 2317
    const/4 v0, 0x0

    .line 2318
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 2329
    :goto_0
    return v0

    .line 2320
    :sswitch_0
    const/16 v0, 0x2002

    .line 2321
    goto :goto_0

    .line 2323
    :sswitch_1
    const/16 v0, 0x1001

    .line 2324
    goto :goto_0

    .line 2326
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2318
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 959
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 963
    const/4 v2, 0x0

    .line 965
    .local v2, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    sget-object v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 966
    const-class v3, Landroid/view/animation/Animation;

    const-string v4, "mListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 967
    sget-object v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 969
    :cond_2
    sget-object v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 978
    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 979
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v3, p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 970
    :catch_0
    move-exception v1

    .line 971
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "SeslFragmentManager"

    const-string v4, "No field with the name mListener is found in Animation class"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 972
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 973
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "SeslFragmentManager"

    const-string v4, "Cannot access Animation\'s mListener field"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->modifiesAlpha(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    .line 560
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 564
    const-string v3, "SeslFragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v3, "SeslFragmentManager"

    const-string v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v1, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;

    const-string v3, "SeslFragmentManager"

    invoke-direct {v1, v3}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;-><init>(Ljava/lang/String;)V

    .line 567
    .local v1, "logw":Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 568
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v3, :cond_0

    .line 570
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    const-string v4, "  "

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    throw p1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SeslFragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 576
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v3, "  "

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 577
    :catch_1
    move-exception v0

    .line 578
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "SeslFragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 2341
    const/4 v0, -0x1

    .line 2342
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 2353
    :goto_0
    return v0

    .line 2344
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2345
    :goto_1
    goto :goto_0

    .line 2344
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 2347
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 2348
    :goto_2
    goto :goto_0

    .line 2347
    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    .line 2350
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_3

    .line 2342
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reportBackStackChanged()V

    .line 1713
    return-void
.end method

.method public addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V
    .locals 4
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1348
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1351
    :cond_0
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SeslFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeActive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1353
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1354
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1355
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    .line 1359
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    .line 1360
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1361
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1363
    :cond_3
    if-eqz p2, :cond_4

    .line 1364
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1367
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    return-void
.end method

.method public allocBackStackIndex(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)I
    .locals 5
    .param p1, "bse"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .prologue
    .line 1563
    monitor-enter p0

    .line 1564
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1565
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1568
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1569
    .local v0, "index":I
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SeslFragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    monitor-exit p0

    move v1, v0

    .line 1577
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 1574
    .end local v1    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1575
    .restart local v0    # "index":I
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SeslFragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1577
    monitor-exit p0

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1579
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public attachController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 2
    .param p1, "host"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
    .param p2, "container"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;
    .param p3, "parent"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2125
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 2126
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    .line 2127
    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2128
    return-void
.end method

.method public attachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V
    .locals 6
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1446
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SeslFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-eqz v0, :cond_5

    .line 1448
    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    .line 1449
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-nez v0, :cond_5

    .line 1450
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :cond_2
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SeslFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    .line 1459
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v0, :cond_4

    .line 1460
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1462
    :cond_4
    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 1465
    :cond_5
    return-void
.end method

.method public beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V
    .locals 6
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1427
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SeslFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_0
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-nez v0, :cond_4

    .line 1429
    iput-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    .line 1430
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v0, :cond_4

    .line 1432
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1433
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SeslFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1436
    :cond_2
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v0, :cond_3

    .line 1437
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1439
    :cond_3
    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1440
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 1443
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2140
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    .line 2141
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2142
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2209
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2211
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2212
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    .line 2213
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2217
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2292
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2294
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2295
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    .line 2296
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2297
    const/4 v2, 0x1

    .line 2302
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 2293
    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2302
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2135
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    .line 2136
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2137
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2231
    const/4 v3, 0x0

    .line 2232
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 2233
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 2234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2235
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2236
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_1

    .line 2237
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2238
    const/4 v3, 0x1

    .line 2239
    if-nez v2, :cond_0

    .line 2240
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2242
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2248
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 2249
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 2250
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2251
    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2252
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroyOptionsMenu()V

    .line 2249
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2257
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_5
    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 2259
    return v3
.end method

.method public dispatchDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    .line 2177
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    .line 2178
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2179
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 2180
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    .line 2181
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2182
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    .prologue
    .line 2172
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2173
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 2220
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2222
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2223
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    .line 2224
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performLowMemory()V

    .line 2221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2228
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2185
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2194
    :cond_0
    return-void

    .line 2188
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2189
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2190
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_2

    .line 2191
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performMultiWindowModeChanged(Z)V

    .line 2188
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2278
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2280
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2281
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    .line 2282
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2283
    const/4 v2, 0x1

    .line 2288
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 2279
    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2288
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2306
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2308
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2309
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    .line 2310
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2307
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2314
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 2155
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2156
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 3
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 2197
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2206
    :cond_0
    return-void

    .line 2200
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2201
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2202
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_2

    .line 2203
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performPictureInPictureModeChanged(Z)V

    .line 2200
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2263
    const/4 v2, 0x0

    .line 2264
    .local v2, "show":Z
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 2265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2266
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2267
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    .line 2268
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2269
    const/4 v2, 0x1

    .line 2265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2274
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public dispatchReallyStop()V
    .locals 2

    .prologue
    .line 2168
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2169
    return-void
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2150
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    .line 2151
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2152
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2145
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    .line 2146
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2147
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 2162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    .line 2164
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    .line 2165
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 4

    .prologue
    .line 1684
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v3, :cond_2

    .line 1685
    const/4 v2, 0x0

    .line 1686
    .local v2, "loadersRunning":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1687
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1688
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v3, :cond_0

    .line 1689
    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v2, v3

    .line 1686
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1692
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_1
    if-nez v2, :cond_2

    .line 1693
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1694
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1697
    .end local v1    # "i":I
    .end local v2    # "loadersRunning":Z
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 743
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 744
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 745
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 746
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 750
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 751
    .local v2, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 752
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 753
    if-eqz v2, :cond_0

    .line 754
    invoke-virtual {v2, v4, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 749
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "N":I
    .end local v2    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 761
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 762
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 763
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 765
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 766
    .restart local v2    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 767
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 772
    .end local v0    # "N":I
    .end local v2    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 773
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 774
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    .line 775
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 777
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 778
    .restart local v2    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 779
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 784
    .end local v0    # "N":I
    .end local v2    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 785
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 786
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    .line 787
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 789
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .line 790
    .local v1, "bs":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 791
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1, v4, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 797
    .end local v0    # "N":I
    .end local v1    # "bs":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    .line 798
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 799
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 800
    .restart local v0    # "N":I
    if-lez v0, :cond_5

    .line 801
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 803
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .line 804
    .restart local v1    # "bs":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 805
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 802
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 810
    .end local v0    # "N":I
    .end local v1    # "bs":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 811
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 817
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 818
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    .line 819
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 821
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 822
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 823
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 820
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 814
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 828
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "SeslFragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mHost="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 830
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 831
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v6, :cond_8

    .line 832
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 834
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 835
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 836
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 837
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_9

    .line 838
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 841
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 842
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 846
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1544
    if-nez p2, :cond_0

    .line 1545
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->checkStateLoss()V

    .line 1547
    :cond_0
    monitor-enter p0

    .line 1548
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_2

    .line 1549
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1551
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1554
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1556
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1557
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1559
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    return-void
.end method

.method public execPendingActions()Z
    .locals 5

    .prologue
    .line 1642
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    if-eqz v3, :cond_0

    .line 1643
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SeslFragmentManager is already executing transactions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1646
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1647
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must be called from main thread of fragment host"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1650
    :cond_1
    const/4 v0, 0x0

    .line 1655
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    .line 1656
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1657
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1678
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->doPendingDeferredStart()V

    .line 1680
    return v0

    .line 1660
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1661
    .local v2, "numActions":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v3, v3

    if-ge v3, v2, :cond_5

    .line 1662
    :cond_4
    new-array v3, v2, [Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1664
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1665
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1666
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1667
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    .line 1670
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 1671
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1672
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 1670
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1667
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1674
    .restart local v1    # "i":I
    .restart local v2    # "numActions":I
    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    .line 1675
    const/4 v0, 0x1

    .line 1676
    goto :goto_0
.end method

.method public execSingleAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1619
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SeslFragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1623
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1624
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1627
    :cond_1
    if-nez p2, :cond_2

    .line 1628
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->checkStateLoss()V

    .line 1631
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    .line 1632
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    .line 1635
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->doPendingDeferredStart()V

    .line 1636
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1469
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1471
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1472
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1473
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-ne v2, p1, :cond_1

    .line 1487
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 1471
    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1478
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1480
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 1481
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1482
    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-eq v2, p1, :cond_0

    .line 1480
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1487
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1492
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1494
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1495
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1496
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1510
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 1494
    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1501
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 1503
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 1504
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1505
    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1503
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1510
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 1514
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1515
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1516
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1517
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1522
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 1515
    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1522
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1608
    monitor-enter p0

    .line 1609
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1610
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1613
    :cond_0
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SeslFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    monitor-exit p0

    .line 1616
    return-void

    .line 1615
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackStackEntryAt(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 684
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 685
    .local v1, "index":I
    if-ne v1, v2, :cond_1

    .line 686
    const/4 v0, 0x0

    .line 697
    :cond_0
    :goto_0
    return-object v0

    .line 688
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 689
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeslFragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 692
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 693
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-nez v0, :cond_0

    .line 694
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeslFragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLayoutInflaterFactory()Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterFactory;
    .locals 0

    .prologue
    .line 2451
    return-object p0
.end method

.method public hideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V
    .locals 5
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1387
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SeslFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_0
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v1, :cond_4

    .line 1389
    iput-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    .line 1390
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1391
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1393
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1394
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1395
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1397
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1400
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1402
    :cond_3
    invoke-virtual {p1, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onHiddenChanged(Z)V

    .line 1404
    :cond_4
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 985
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const v8, 0x3f79999a    # 0.975f

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 882
    iget v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 884
    .local v1, "animObj":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 936
    .end local v1    # "animObj":Landroid/view/animation/Animation;
    :goto_0
    return-object v1

    .line 888
    .restart local v1    # "animObj":Landroid/view/animation/Animation;
    :cond_0
    iget v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    if-eqz v4, :cond_1

    .line 889
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 890
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 891
    goto :goto_0

    .line 895
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    if-nez p2, :cond_2

    move-object v1, v3

    .line 896
    goto :goto_0

    .line 899
    :cond_2
    invoke-static {p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    .line 900
    .local v2, "styleIndex":I
    if-gez v2, :cond_3

    move-object v1, v3

    .line 901
    goto :goto_0

    .line 904
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 919
    if-nez p4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onHasWindowAnimations()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 920
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 922
    :cond_4
    if-nez p4, :cond_5

    move-object v1, v3

    .line 923
    goto :goto_0

    .line 906
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f900000    # 1.125f

    invoke-static {v3, v4, v6, v7, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 908
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v8, v6, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 910
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6, v7, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 912
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x3f89999a    # 1.075f

    invoke-static {v3, v6, v4, v6, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 914
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 916
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v3

    .line 936
    goto :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3
    .param p1, "f"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 1314
    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-ltz v0, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1319
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1322
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setIndex(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1323
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    :goto_1
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SeslFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1326
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setIndex(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method makeInactive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3
    .param p1, "f"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 1333
    iget v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1345
    :goto_0
    return-void

    .line 1337
    :cond_0
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SeslFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1339
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1342
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->initState()V

    goto :goto_0
.end method

.method moveToState(IIIZ)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No host"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_2

    .line 1300
    :cond_1
    :goto_0
    return-void

    .line 1278
    :cond_2
    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    .line 1279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1280
    const/4 v7, 0x0

    .line 1281
    .local v7, "loadersRunning":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1282
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1283
    .local v1, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v1, :cond_3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1284
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 1285
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_3

    .line 1286
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v7, v0

    .line 1281
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1291
    .end local v1    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_4
    if-nez v7, :cond_5

    .line 1292
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1295
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1297
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method moveToState(IZ)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1266
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IIIZ)V

    .line 1267
    return-void
.end method

.method moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 6
    .param p1, "f"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    const/4 v3, 0x0

    .line 1262
    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 1263
    return-void
.end method

.method moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V
    .locals 17
    .param p1, "f"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .prologue
    .line 991
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_1

    .line 992
    const/16 p2, 0x1

    .line 994
    :cond_1
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 v0, p2

    if-le v0, v4, :cond_2

    .line 996
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 p2, v0

    .line 1000
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    const/4 v4, 0x3

    move/from16 v0, p2

    if-le v0, v4, :cond_3

    .line 1001
    const/16 p2, 0x3

    .line 1003
    :cond_3
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 v0, p2

    if-ge v4, v0, :cond_20

    .line 1007
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    if-nez v4, :cond_5

    .line 1259
    :cond_4
    :goto_0
    return-void

    .line 1010
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 1015
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    .line 1016
    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mStateAfterAnimating:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 1018
    :cond_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 1254
    :cond_7
    :goto_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 v0, p2

    if-eq v4, v0, :cond_4

    .line 1255
    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveToState: SeslFragment state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not updated inline; expected state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    goto :goto_0

    .line 1020
    :pswitch_0
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v4, :cond_a

    .line 1022
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1023
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1025
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_state"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1027
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v4, :cond_9

    .line 1028
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_req_state"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    .line 1031
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:user_visible_hint"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    .line 1033
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    if-nez v4, :cond_a

    .line 1034
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    .line 1035
    const/4 v4, 0x3

    move/from16 v0, p2

    if-le v0, v4, :cond_a

    .line 1036
    const/16 p2, 0x3

    .line 1040
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1043
    :goto_2
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1044
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onAttach(Landroid/content/Context;)V

    .line 1046
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-nez v4, :cond_c

    .line 1047
    new-instance v4, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SeslFragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onAttach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1042
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 1043
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getFragmentManagerImpl()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    move-result-object v4

    goto :goto_2

    .line 1050
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v4, :cond_1c

    .line 1051
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1056
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-nez v4, :cond_1d

    .line 1057
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performCreate(Landroid/os/Bundle;)V

    .line 1062
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    .line 1063
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-eqz v4, :cond_e

    .line 1067
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    .line 1069
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_1e

    .line 1070
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    .line 1071
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1072
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1079
    :cond_e
    :goto_5
    :pswitch_1
    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_17

    .line 1080
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_f
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-nez v4, :cond_15

    .line 1082
    const/4 v11, 0x0

    .line 1083
    .local v11, "container":Landroid/view/ViewGroup;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    if-eqz v4, :cond_11

    .line 1084
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    .line 1085
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for a container view with no id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1090
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "container":Landroid/view/ViewGroup;
    check-cast v11, Landroid/view/ViewGroup;

    .line 1091
    .restart local v11    # "container":Landroid/view/ViewGroup;
    if-nez v11, :cond_11

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRestored:Z

    if-nez v4, :cond_11

    .line 1094
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1098
    .local v14, "resName":Ljava/lang/String;
    :goto_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No view found for id 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    .line 1100
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1098
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1105
    .end local v14    # "resName":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    .line 1106
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    .line 1108
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_1f

    .line 1109
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    .line 1110
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1111
    if-eqz v11, :cond_13

    .line 1112
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Landroid/view/animation/Animation;

    move-result-object v10

    .line 1114
    .local v10, "anim":Landroid/view/animation/Animation;
    if-eqz v10, :cond_12

    .line 1115
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1116
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1118
    :cond_12
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1120
    .end local v10    # "anim":Landroid/view/animation/Animation;
    :cond_13
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    :cond_14
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1127
    .end local v11    # "container":Landroid/view/ViewGroup;
    :cond_15
    :goto_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1128
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_16

    .line 1129
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1131
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1134
    :cond_17
    :pswitch_2
    const/4 v4, 0x2

    move/from16 v0, p2

    if-le v0, v4, :cond_18

    .line 1135
    const/4 v4, 0x3

    move-object/from16 v0, p1

    iput v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    .line 1138
    :cond_18
    :pswitch_3
    const/4 v4, 0x3

    move/from16 v0, p2

    if-le v0, v4, :cond_1a

    .line 1139
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_19

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performStart()V

    .line 1143
    :cond_1a
    :pswitch_4
    const/4 v4, 0x4

    move/from16 v0, p2

    if-le v0, v4, :cond_7

    .line 1144
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1b

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performResume()V

    .line 1146
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1147
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 1053
    :cond_1c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto/16 :goto_3

    .line 1059
    :cond_1d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1060
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    goto/16 :goto_4

    .line 1075
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_5

    .line 1095
    .restart local v11    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v12

    .line 1096
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v14, "unknown"

    .restart local v14    # "resName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1123
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v14    # "resName":Ljava/lang/String;
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_7

    .line 1150
    .end local v11    # "container":Landroid/view/ViewGroup;
    :cond_20
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    move/from16 v0, p2

    if-le v4, v0, :cond_7

    .line 1151
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 1210
    :cond_21
    :goto_8
    :pswitch_5
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_7

    .line 1211
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    if-eqz v4, :cond_22

    .line 1212
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_22

    .line 1219
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    .line 1220
    .local v15, "v":Landroid/view/View;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    .line 1221
    invoke-virtual {v15}, Landroid/view/View;->clearAnimation()V

    .line 1224
    .end local v15    # "v":Landroid/view/View;
    :cond_22
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_2e

    .line 1229
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mStateAfterAnimating:I

    .line 1230
    const/16 p2, 0x1

    goto/16 :goto_1

    .line 1153
    :pswitch_6
    const/4 v4, 0x5

    move/from16 v0, p2

    if-ge v0, v4, :cond_24

    .line 1154
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_23

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performPause()V

    .line 1158
    :cond_24
    :pswitch_7
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ge v0, v4, :cond_26

    .line 1159
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_25

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performStop()V

    .line 1163
    :cond_26
    :pswitch_8
    const/4 v4, 0x3

    move/from16 v0, p2

    if-ge v0, v4, :cond_28

    .line 1164
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_27

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom STOPPED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performReallyStop()V

    .line 1168
    :cond_28
    :pswitch_9
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ge v0, v4, :cond_21

    .line 1169
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_29

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_29
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_2a

    .line 1173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onShouldSaveFragmentState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_2a

    .line 1174
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveFragmentViewState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1177
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performDestroyView()V

    .line 1178
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_2d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2d

    .line 1179
    const/4 v10, 0x0

    .line 1180
    .restart local v10    # "anim":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    if-lez v4, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mDestroyed:Z

    if-nez v4, :cond_2b

    .line 1181
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Landroid/view/animation/Animation;

    move-result-object v10

    .line 1184
    :cond_2b
    if-eqz v10, :cond_2c

    .line 1185
    move-object/from16 v13, p1

    .line 1186
    .local v13, "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimatingAway:Landroid/view/View;

    .line 1187
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mStateAfterAnimating:I

    .line 1188
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1189
    .local v16, "viewToAnimate":Landroid/view/View;
    new-instance v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v10, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$5;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v10, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1201
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1203
    .end local v13    # "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v16    # "viewToAnimate":Landroid/view/View;
    :cond_2c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1205
    .end local v10    # "anim":Landroid/view/animation/Animation;
    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    .line 1206
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    .line 1207
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_8

    .line 1232
    :cond_2e
    sget-boolean v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_2f

    const-string v4, "SeslFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_2f
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-nez v4, :cond_30

    .line 1234
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performDestroy()V

    .line 1239
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performDetach()V

    .line 1240
    if-nez p5, :cond_7

    .line 1241
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-nez v4, :cond_31

    .line 1242
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeInactive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto/16 :goto_1

    .line 1236
    :cond_30
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    goto :goto_9

    .line 1244
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 1245
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1246
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    goto/16 :goto_1

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1151
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 2131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    .line 2132
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 2358
    const-string v4, "fragment"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-object v0

    .line 2362
    :cond_1
    const-string v4, "class"

    invoke-interface {p4, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2363
    .local v8, "fname":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2364
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_2

    .line 2365
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2367
    :cond_2
    invoke-virtual {v6, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 2368
    .local v9, "id":I
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2369
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2371
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2377
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 2378
    .local v7, "containerId":I
    :goto_1
    if-ne v7, v5, :cond_4

    if-ne v9, v5, :cond_4

    if-nez v10, :cond_4

    .line 2379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7    # "containerId":I
    :cond_3
    move v7, v3

    .line 2377
    goto :goto_1

    .line 2386
    .restart local v7    # "containerId":I
    :cond_4
    if-eq v9, v5, :cond_9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentById(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    .line 2387
    .local v1, "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :goto_2
    if-nez v1, :cond_5

    if-eqz v10, :cond_5

    .line 2388
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    .line 2390
    :cond_5
    if-nez v1, :cond_6

    if-eq v7, v5, :cond_6

    .line 2391
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentById(I)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    .line 2394
    :cond_6
    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "SeslFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateView: id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2395
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2394
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_7
    if-nez v1, :cond_b

    .line 2398
    invoke-static {p3, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    .line 2399
    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    .line 2400
    if-eqz v9, :cond_a

    move v0, v9

    :goto_3
    iput v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    .line 2401
    iput v7, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    .line 2402
    iput-object v10, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    .line 2403
    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    .line 2404
    iput-object p0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 2405
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 2406
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2407
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    .line 2431
    :cond_8
    :goto_4
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    if-ge v0, v2, :cond_d

    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    if-eqz v0, :cond_d

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2432
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 2437
    :goto_5
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 2438
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SeslFragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not create a view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v1    # "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_9
    move-object v1, v0

    .line 2386
    goto/16 :goto_2

    .restart local v1    # "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_a
    move v0, v7

    .line 2400
    goto :goto_3

    .line 2409
    :cond_b
    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    if-eqz v0, :cond_c

    .line 2412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2413
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2414
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2419
    :cond_c
    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    .line 2420
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    .line 2424
    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-nez v0, :cond_8

    .line 2425
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p4, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 2434
    :cond_d
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto/16 :goto_5

    .line 2441
    :cond_e
    if-eqz v9, :cond_f

    .line 2442
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 2444
    :cond_f
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2445
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2447
    :cond_10
    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public performPendingDeferredStart(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 6
    .param p1, "f"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    const/4 v3, 0x0

    .line 940
    iget-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    if-eqz v0, :cond_0

    .line 941
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_1

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iput-boolean v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDeferStart:Z

    .line 947
    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto :goto_0
.end method

.method public popBackStack()V
    .locals 2

    .prologue
    .line 596
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 601
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 628
    if-gez p1, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 636
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 612
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$3;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 617
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->checkStateLoss()V

    .line 606
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executePendingTransactions()Z

    .line 607
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->checkStateLoss()V

    .line 641
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executePendingTransactions()Z

    .line 642
    if-gez p1, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->checkStateLoss()V

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->executePendingTransactions()Z

    .line 623
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1717
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 1718
    const/4 v9, 0x0

    .line 1790
    :goto_0
    return v9

    .line 1720
    :cond_0
    if-nez p2, :cond_3

    if-gez p3, :cond_3

    and-int/lit8 v9, p4, 0x1

    if-nez v9, :cond_3

    .line 1721
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 1722
    .local v5, "last":I
    if-gez v5, :cond_1

    .line 1723
    const/4 v9, 0x0

    goto :goto_0

    .line 1725
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .line 1726
    .local v1, "bss":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1727
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1728
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    iget v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_2

    .line 1729
    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1731
    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v2, v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->popFromBackStack(ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    .line 1732
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reportBackStackChanged()V

    .line 1790
    .end local v1    # "bss":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    .end local v5    # "last":I
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1734
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    :cond_3
    const/4 v4, -0x1

    .line 1735
    .local v4, "index":I
    if-nez p2, :cond_4

    if-ltz p3, :cond_b

    .line 1738
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 1739
    :goto_2
    if-ltz v4, :cond_5

    .line 1740
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .line 1741
    .restart local v1    # "bss":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1749
    .end local v1    # "bss":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    :cond_5
    if-gez v4, :cond_8

    .line 1750
    const/4 v9, 0x0

    goto :goto_0

    .line 1744
    .restart local v1    # "bss":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    :cond_6
    if-ltz p3, :cond_7

    iget v9, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-eq p3, v9, :cond_5

    .line 1747
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 1748
    goto :goto_2

    .line 1752
    .end local v1    # "bss":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    :cond_8
    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_b

    .line 1753
    add-int/lit8 v4, v4, -0x1

    .line 1755
    :goto_3
    if-ltz v4, :cond_b

    .line 1756
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .line 1757
    .restart local v1    # "bss":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    if-eqz p2, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    if-ltz p3, :cond_b

    iget v9, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-ne p3, v9, :cond_b

    .line 1759
    :cond_a
    add-int/lit8 v4, v4, -0x1

    .line 1760
    goto :goto_3

    .line 1766
    .end local v1    # "bss":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_c

    .line 1767
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1769
    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v8, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;>;"
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_4
    if-le v3, v4, :cond_d

    .line 1772
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1774
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 1775
    .local v0, "LAST":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1776
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1777
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    iget v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_e

    .line 1778
    const/4 v3, 0x0

    :goto_5
    if-gt v3, v0, :cond_e

    .line 1779
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-virtual {v9, v2, v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1778
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1782
    :cond_e
    const/4 v7, 0x0

    .line 1783
    .local v7, "state":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    const/4 v3, 0x0

    :goto_6
    if-gt v3, v0, :cond_11

    .line 1784
    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_f

    const-string v9, "SeslFragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Popping back stack state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_f
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    if-ne v3, v0, :cond_10

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v9, v10, v7, v2, v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->popFromBackStack(ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    move-result-object v7

    .line 1783
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1785
    :cond_10
    const/4 v10, 0x0

    goto :goto_7

    .line 1788
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 675
    iget v0, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v0, :cond_0

    .line 676
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the SeslFragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 679
    :cond_0
    iget v0, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 680
    return-void
.end method

.method public removeFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V
    .locals 7
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1370
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SeslFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_5

    move v6, v0

    .line 1372
    .local v6, "inactive":Z
    :goto_0
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-eqz v1, :cond_1

    if-eqz v6, :cond_4

    .line 1373
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1374
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1376
    :cond_2
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1377
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1379
    :cond_3
    iput-boolean v5, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    .line 1380
    iput-boolean v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    .line 1381
    if-eqz v6, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 1384
    :cond_4
    return-void

    .end local v6    # "inactive":Z
    :cond_5
    move v6, v5

    .line 1371
    goto :goto_0

    .restart local v6    # "inactive":Z
    :cond_6
    move v2, v0

    .line 1381
    goto :goto_1
.end method

.method public removeOnBackStackChangedListener(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 671
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 1700
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1701
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1702
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1705
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V
    .locals 14
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    .prologue
    .line 2001
    if-nez p1, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, p1

    .line 2002
    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;

    .line 2003
    .local v5, "fms":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    if-eqz v11, :cond_0

    .line 2005
    const/4 v2, 0x0

    .line 2009
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;>;"
    if-eqz p2, :cond_5

    .line 2010
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v9

    .line 2011
    .local v9, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v2

    .line 2012
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 2013
    .local v3, "count":I
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_5

    .line 2014
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2015
    .local v4, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    sget-boolean v11, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "SeslFragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: re-attaching retained "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_2
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    iget v12, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    aget-object v6, v11, v12

    .line 2017
    .local v6, "fs":Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    iput-object v4, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2018
    const/4 v11, 0x0

    iput-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2019
    const/4 v11, 0x0

    iput v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    .line 2020
    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    .line 2021
    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    .line 2022
    const/4 v11, 0x0

    iput-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2023
    iget-object v11, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v11, :cond_3

    .line 2024
    iget-object v11, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2025
    iget-object v11, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:view_state"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v11

    iput-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2027
    iget-object v11, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2013
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2012
    .end local v3    # "count":I
    .end local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v6    # "fs":Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    .end local v7    # "i":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2034
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 2035
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_6

    .line 2036
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2038
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    array-length v11, v11

    if-ge v7, v11, :cond_c

    .line 2039
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    aget-object v6, v11, v7

    .line 2040
    .restart local v6    # "fs":Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    if-eqz v6, :cond_9

    .line 2041
    const/4 v1, 0x0

    .line 2042
    .local v1, "childNonConfig":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 2043
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "childNonConfig":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    .line 2045
    .restart local v1    # "childNonConfig":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    :cond_7
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v6, v11, v12, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->instantiate(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v4

    .line 2046
    .restart local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    sget-boolean v11, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_8

    const-string v11, "SeslFragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: active #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_8
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mInstance:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2038
    .end local v1    # "childNonConfig":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    .end local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2053
    :cond_9
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2054
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v11, :cond_a

    .line 2055
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 2057
    :cond_a
    sget-boolean v11, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_b

    const-string v11, "SeslFragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: avail #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_b
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2063
    .end local v6    # "fs":Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    :cond_c
    if-eqz p2, :cond_10

    .line 2064
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v9

    .line 2065
    .restart local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 2066
    .restart local v3    # "count":I
    :goto_5
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_10

    .line 2067
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2068
    .restart local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    if-ltz v11, :cond_d

    .line 2069
    iget v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 2070
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v12, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2066
    :cond_d
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2065
    .end local v3    # "count":I
    .end local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    .line 2072
    .restart local v3    # "count":I
    .restart local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_f
    const-string v11, "SeslFragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Re-attaching retained fragment "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " target no longer exists: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const/4 v11, 0x0

    iput-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto :goto_7

    .line 2081
    .end local v3    # "count":I
    .end local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    :cond_10
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    if-eqz v11, :cond_14

    .line 2082
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2083
    const/4 v7, 0x0

    :goto_8
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    array-length v11, v11

    if-ge v7, v11, :cond_15

    .line 2084
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v12, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    aget v12, v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 2085
    .restart local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-nez v4, :cond_11

    .line 2086
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No instantiated fragment for index #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2089
    :cond_11
    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    .line 2090
    sget-boolean v11, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_12

    const-string v11, "SeslFragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: added #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_12
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2092
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Already added!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2094
    :cond_13
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2083
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2097
    .end local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_14
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2101
    :cond_15
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    if-eqz v11, :cond_18

    .line 2102
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    array-length v12, v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2103
    const/4 v7, 0x0

    :goto_9
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    array-length v11, v11

    if-ge v7, v11, :cond_0

    .line 2104
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    aget-object v11, v11, v7

    invoke-virtual {v11, p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;->instantiate(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    move-result-object v0

    .line 2105
    .local v0, "bse":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    sget-boolean v11, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_16

    .line 2106
    const-string v11, "SeslFragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllState: back stack #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    new-instance v8, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;

    const-string v11, "SeslFragmentManager"

    invoke-direct {v8, v11}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;-><init>(Ljava/lang/String;)V

    .line 2109
    .local v8, "logw":Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2110
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string v11, "  "

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v10, v12}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2112
    .end local v8    # "logw":Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_16
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2113
    iget v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-ltz v11, :cond_17

    .line 2114
    iget v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {p0, v11, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setBackStackIndex(ILcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    .line 2103
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2118
    .end local v0    # "bse":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    :cond_18
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method retainNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 1794
    const/4 v4, 0x0

    .line 1795
    .local v4, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    const/4 v2, 0x0

    .line 1796
    .local v2, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;>;"
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 1797
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 1798
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1799
    .local v3, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v3, :cond_5

    .line 1800
    iget-boolean v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    if-eqz v7, :cond_1

    .line 1801
    if-nez v4, :cond_0

    .line 1802
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    .restart local v4    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    .line 1806
    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v7, v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    :goto_1
    iput v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    .line 1807
    sget-boolean v7, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "SeslFragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retainNonConfig: keeping retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_1
    const/4 v0, 0x0

    .line 1810
    .local v0, "addedChild":Z
    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v7, :cond_4

    .line 1811
    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->retainNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    move-result-object v1

    .line 1812
    .local v1, "child":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    if-eqz v1, :cond_4

    .line 1813
    if-nez v2, :cond_3

    .line 1814
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1815
    .restart local v2    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 1816
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1806
    .end local v0    # "addedChild":Z
    .end local v1    # "child":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    .end local v6    # "j":I
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 1819
    .restart local v0    # "addedChild":Z
    .restart local v1    # "child":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    const/4 v0, 0x1

    .line 1823
    .end local v1    # "child":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    :cond_4
    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 1824
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    .end local v0    # "addedChild":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1829
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v5    # "i":I
    :cond_6
    if-nez v4, :cond_7

    if-nez v2, :cond_7

    move-object v7, v8

    .line 1832
    :goto_3
    return-object v7

    :cond_7
    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    invoke-direct {v7, v4, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1887
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    .line 1898
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateSaved:Z

    .line 1900
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 1995
    :cond_0
    :goto_0
    return-object v5

    .line 1905
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1906
    .local v0, "N":I
    new-array v1, v0, [Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    .line 1907
    .local v1, "active":[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    const/4 v7, 0x0

    .line 1908
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_8

    .line 1909
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1910
    .local v4, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v4, :cond_6

    .line 1911
    iget v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v9, :cond_2

    .line 1912
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1917
    :cond_2
    const/4 v7, 0x1

    .line 1919
    new-instance v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    invoke-direct {v6, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1920
    .local v6, "fs":Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    aput-object v6, v1, v8

    .line 1922
    iget v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    if-lez v9, :cond_7

    iget-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_7

    .line 1923
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveFragmentBasicState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1925
    iget-object v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v9, :cond_5

    .line 1926
    iget-object v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v9, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v9, :cond_3

    .line 1927
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1931
    :cond_3
    iget-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_4

    .line 1932
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1934
    :cond_4
    iget-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_state"

    iget-object v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p0, v9, v10, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1936
    iget v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    if-eqz v9, :cond_5

    .line 1937
    iget-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_req_state"

    iget v11, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1947
    :cond_5
    :goto_2
    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "SeslFragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Saved state of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    .end local v6    # "fs":Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1944
    .restart local v6    # "fs":Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    :cond_7
    iget-object v9, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 1952
    .end local v4    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v6    # "fs":Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;
    :cond_8
    if-nez v7, :cond_9

    .line 1953
    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SeslFragmentManager"

    const-string/jumbo v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1957
    :cond_9
    const/4 v2, 0x0

    .line 1958
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 1961
    .local v3, "backStack":[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v9, :cond_c

    .line 1962
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1963
    if-lez v0, :cond_c

    .line 1964
    new-array v2, v0, [I

    .line 1965
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_c

    .line 1966
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v9, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    aput v9, v2, v8

    .line 1967
    aget v9, v2, v8

    if-gez v9, :cond_a

    .line 1968
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1969
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1968
    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1972
    :cond_a
    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_b

    const-string v9, "SeslFragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1973
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1972
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1979
    :cond_c
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v9, :cond_e

    .line 1980
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1981
    if-lez v0, :cond_e

    .line 1982
    new-array v3, v0, [Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    .line 1983
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_e

    .line 1984
    new-instance v10, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    invoke-direct {v10, v9}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    aput-object v10, v3, v8

    .line 1985
    sget-boolean v9, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_d

    const-string v9, "SeslFragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding back stack #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1986
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1985
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1991
    :cond_e
    new-instance v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;

    invoke-direct {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;-><init>()V

    .line 1992
    .local v5, "fms":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;
    iput-object v1, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mActive:[Lcom/samsung/android/support/sesl/core/app/SeslFragmentState;

    .line 1993
    iput-object v2, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mAdded:[I

    .line 1994
    iput-object v3, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerState;->mBackStack:[Lcom/samsung/android/support/sesl/core/app/SeslBackStackState;

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 1852
    const/4 v0, 0x0

    .line 1854
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1855
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1857
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1858
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1860
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1863
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1864
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveFragmentViewState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1866
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1867
    if-nez v0, :cond_3

    .line 1868
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1870
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1873
    :cond_4
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 1874
    if-nez v0, :cond_5

    .line 1875
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1878
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1881
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    const/4 v1, 0x0

    .line 707
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v2, :cond_0

    .line 708
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeslFragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not currently in the SeslFragmentManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 711
    :cond_0
    iget v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    if-lez v2, :cond_1

    .line 712
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveFragmentBasicState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 713
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 715
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method saveFragmentViewState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 2
    .param p1, "f"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 1836
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1849
    :cond_0
    :goto_0
    return-void

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1840
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1844
    :goto_1
    iget-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1845
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 1842
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public setBackStackIndex(ILcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .prologue
    .line 1583
    monitor-enter p0

    .line 1584
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1587
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1588
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    .line 1589
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SeslFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1604
    :goto_0
    monitor-exit p0

    .line 1605
    return-void

    .line 1592
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1593
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1597
    :cond_3
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "SeslFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1601
    :cond_5
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "SeslFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1604
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V
    .locals 6
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1407
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SeslFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v1, :cond_4

    .line 1409
    iput-boolean v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    .line 1410
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1411
    invoke-virtual {p0, p1, p2, v5, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->loadAnimation(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1413
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1414
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1415
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1417
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1420
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1422
    :cond_3
    invoke-virtual {p1, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onHiddenChanged(Z)V

    .line 1424
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1303
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1311
    :cond_0
    return-void

    .line 1305
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1306
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1307
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_2

    .line 1308
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->performPendingDeferredStart(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1305
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 726
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SeslFragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mParent:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 734
    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
