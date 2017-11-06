.class Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$1;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorWheel$OnWheelColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->initGradientColorWheel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelColorChanged(FF)V
    .locals 2
    .param p1, "hue"    # F
    .param p2, "saturation"    # F

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$002(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;Z)Z

    .line 139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->setHS(FF)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)V

    .line 141
    return-void
.end method
