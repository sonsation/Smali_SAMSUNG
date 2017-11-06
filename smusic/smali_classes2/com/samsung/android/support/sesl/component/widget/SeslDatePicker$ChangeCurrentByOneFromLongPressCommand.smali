.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 1775
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 1779
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 1780
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1784
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemFromUser(IZ)V

    .line 1789
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1790
    return-void

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemFromUser(IZ)V

    goto :goto_0
.end method
