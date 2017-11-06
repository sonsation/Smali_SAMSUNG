.class Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 847
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    const-string v3, "SeslTimePickerSpinnerDelegate"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 865
    :cond_1
    :goto_0
    return v1

    .line 854
    :cond_2
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 856
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 857
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_1
    move v1, v2

    .line 863
    goto :goto_0

    .line 854
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
