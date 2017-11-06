.class Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SeslSwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAnimation"
.end annotation


# instance fields
.field final mDiff:F

.field final mEndPosition:F

.field final mStartPosition:F

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;FF)V
    .locals 1
    .param p2, "startPosition"    # F
    .param p3, "endPosition"    # F

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1461
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->mStartPosition:F

    .line 1462
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->mEndPosition:F

    .line 1463
    sub-float v0, p3, p2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->mDiff:F

    .line 1464
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->mStartPosition:F

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat$ThumbAnimation;->mDiff:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSwitchCompat;->setThumbPosition(F)V

    .line 1469
    return-void
.end method
