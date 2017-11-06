.class Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReverseInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator$ReverseInterpolator;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CircleIndicator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 290
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method
