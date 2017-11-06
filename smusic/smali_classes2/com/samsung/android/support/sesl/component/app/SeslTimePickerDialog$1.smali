.class Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$1;
.super Ljava/lang/Object;
.source "SeslTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->access$000(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;)Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->access$000(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;)Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setEditTextMode(Z)V

    .line 58
    :cond_0
    return-void
.end method
