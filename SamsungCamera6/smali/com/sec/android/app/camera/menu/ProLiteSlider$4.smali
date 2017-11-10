.class Lcom/sec/android/app/camera/menu/ProLiteSlider$4;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ProLiteSlider;->initProSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field final synthetic val$index:I

.field final synthetic val$indicatorExposureLiteValue:[I

.field final synthetic val$indicatorExposureValue:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;[II[I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureValue:[I

    iput p3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    iput-object p4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureLiteValue:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 4

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLSlider;

    move-result-object v1

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    aget v0, v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    sget v0, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    aget v0, v0, v2

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$200(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$102(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$100(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onExposureValueMenuSelect(I)V

    :cond_0
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureLiteValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    aget v0, v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$indicatorExposureLiteValue:[I

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$4;->val$index:I

    aget v0, v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
