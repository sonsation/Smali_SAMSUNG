.class Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 725
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 727
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    .line 729
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 731
    :cond_0
    return v1
.end method
