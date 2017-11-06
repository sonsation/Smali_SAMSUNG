.class Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 2739
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->performLongClick()V

    .line 2744
    return-void
.end method
