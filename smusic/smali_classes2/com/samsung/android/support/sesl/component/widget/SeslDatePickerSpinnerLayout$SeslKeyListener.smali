.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;
.super Ljava/lang/Object;
.source "SeslDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 757
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 769
    :goto_0
    return v1

    .line 761
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 763
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :sswitch_1
    move v1, v0

    .line 766
    goto :goto_0

    .line 761
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
