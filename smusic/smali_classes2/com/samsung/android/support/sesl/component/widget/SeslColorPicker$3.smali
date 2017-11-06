.class Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$3;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 183
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 197
    :goto_0
    return v0

    .line 189
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setSelected(Z)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslGradientColorSeekBar;->setSelected(Z)V

    move v0, v1

    .line 194
    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
