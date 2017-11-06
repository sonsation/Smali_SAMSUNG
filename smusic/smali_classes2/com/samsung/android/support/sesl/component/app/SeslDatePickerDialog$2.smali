.class Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$2;
.super Ljava/lang/Object;
.source "SeslDatePickerDialog.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 226
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 227
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :cond_0
    return-void
.end method
