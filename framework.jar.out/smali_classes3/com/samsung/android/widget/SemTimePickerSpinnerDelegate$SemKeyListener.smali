.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 877
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Picker"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_1

    return v4

    .line 880
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 905
    return v4

    .line 882
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 883
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 884
    return v4

    .line 886
    :cond_2
    return v5

    .line 888
    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isEditTextMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    .line 889
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getImeOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x5

    .line 890
    const/4 v3, 0x5

    .line 889
    if-ne v2, v3, :cond_5

    .line 891
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v3, v3, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    .line 892
    const/4 v4, 0x2

    .line 891
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 893
    .local v1, "next":Landroid/view/View;
    if-nez v1, :cond_3

    return v5

    .line 894
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 902
    .end local v1    # "next":Landroid/view/View;
    .end local p1    # "v":Landroid/view/View;
    :cond_4
    :goto_0
    :sswitch_2
    return v5

    .line 895
    .restart local p1    # "v":Landroid/view/View;
    :cond_5
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x6

    .line 896
    const/4 v3, 0x6

    .line 895
    if-ne v2, v3, :cond_4

    .line 897
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    .line 898
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    goto :goto_0

    .line 880
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_2
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
