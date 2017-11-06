.class Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$2;
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
    .line 180
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;II)V
    .locals 1
    .param p1, "spinner"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    .line 183
    return-void
.end method
