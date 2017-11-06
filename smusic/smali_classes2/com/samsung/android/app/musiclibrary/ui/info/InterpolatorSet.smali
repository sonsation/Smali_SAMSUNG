.class public Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;
.super Ljava/lang/Object;
.source "InterpolatorSet.java"


# static fields
.field public static final ELASTIC_70:Landroid/view/animation/Interpolator;

.field public static final ELASTIC_80:Landroid/view/animation/Interpolator;

.field public static final ELASTIC_90:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

.field public static final SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

.field public static final SINE_OUT_80:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 22
    new-instance v0, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 26
    new-instance v0, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 28
    new-instance v0, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Lcom/samsung/android/view/animation/SineOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineOut80;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_OUT_80:Landroid/view/animation/Interpolator;

    .line 33
    new-instance v0, Lcom/samsung/android/view/animation/Elastic70;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/Elastic70;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->ELASTIC_70:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Lcom/samsung/android/view/animation/Elastic80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/Elastic80;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->ELASTIC_80:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Lcom/samsung/android/view/animation/Elastic90;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/Elastic90;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->ELASTIC_90:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
