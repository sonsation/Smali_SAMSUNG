.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.super Ljava/lang/Object;
.source "SeslFragmentTransaction.java"


# static fields
.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_FRAGMENT_CLOSE:I = 0x2002

.field public static final TRANSIT_FRAGMENT_FADE:I = 0x1003

.field public static final TRANSIT_FRAGMENT_OPEN:I = 0x1001

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_UNSET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract add(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract addSharedElement(Landroid/view/View;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract attach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNow()V
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public abstract detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract disallowAddToBackStack()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract hide(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract isAddToBackStackAllowed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract replace(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract replace(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setBreadCrumbShortTitle(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract setBreadCrumbTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract setCustomAnimations(II)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
.end method

.method public abstract setCustomAnimations(IIII)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
.end method

.method public abstract setTransition(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract setTransitionStyle(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
.end method

.method public abstract show(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method
