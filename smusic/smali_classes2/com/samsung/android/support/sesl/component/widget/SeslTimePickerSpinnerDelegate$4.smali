.class Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;
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
    .line 263
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextModeChanged(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;Z)V
    .locals 1
    .param p1, "picker"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .param p2, "mode"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;Z)V

    .line 268
    return-void
.end method
