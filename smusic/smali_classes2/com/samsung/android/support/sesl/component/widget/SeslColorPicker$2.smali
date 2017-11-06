.class Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->initGradientColorSeekBar()V
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
    .line 156
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 159
    if-eqz p3, :cond_0

    .line 160
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$002(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;Z)Z

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 165
    .local v1, "value":F
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 166
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->getColor()I

    move-result v0

    .line 167
    .local v0, "color":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 173
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 181
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 177
    return-void
.end method
