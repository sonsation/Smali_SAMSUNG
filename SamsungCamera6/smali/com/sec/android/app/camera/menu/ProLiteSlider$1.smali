.class Lcom/sec/android/app/camera/menu/ProLiteSlider$1;
.super Ljava/lang/Object;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$200(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    sub-int v1, p1, v1

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->EXPOSURE_COMPENSATION_STEP:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$102(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->access$100(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;->onExposureValueMenuSelect(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider$1;->this$0:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    return-void
.end method
