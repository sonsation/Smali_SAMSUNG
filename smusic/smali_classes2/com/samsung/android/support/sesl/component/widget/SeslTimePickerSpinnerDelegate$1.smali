.class Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;II)V
    .locals 6
    .param p1, "spinner"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 124
    const/16 v1, 0xb

    .line 125
    .local v1, "oldValueNeedAmPmChange":I
    const/16 v0, 0xc

    .line 126
    .local v0, "newValueNeedAmPmChange":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)C

    move-result v2

    const/16 v5, 0x4b

    if-ne v2, v5, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :cond_0
    if-ne p2, v1, :cond_1

    if-eq p3, v0, :cond_2

    :cond_1
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 131
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getValue()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$202(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 132
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->performClick(Z)V

    .line 133
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$402(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;Z)Z

    .line 134
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 135
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .end local v0    # "newValueNeedAmPmChange":I
    .end local v1    # "oldValueNeedAmPmChange":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    .line 146
    return-void

    .restart local v0    # "newValueNeedAmPmChange":I
    .restart local v1    # "oldValueNeedAmPmChange":I
    :cond_4
    move v2, v4

    .line 131
    goto :goto_0
.end method
