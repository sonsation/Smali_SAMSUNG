.class Landroid/support/v4/view/animation/PathInterpolatorCompatBase;
.super Ljava/lang/Object;
.source "PathInterpolatorCompatBase.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 1

    new-instance v0, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;-><init>(FFFF)V

    return-object v0
.end method