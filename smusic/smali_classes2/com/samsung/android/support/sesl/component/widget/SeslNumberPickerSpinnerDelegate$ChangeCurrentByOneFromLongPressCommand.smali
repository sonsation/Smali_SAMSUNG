.class Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2722
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2726
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2727
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 2732
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2733
    return-void
.end method
