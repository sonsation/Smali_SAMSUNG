.class Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;
.super Ljava/lang/Object;
.source "DatePickerAlertDialog.java"

# interfaces
.implements Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 270
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 271
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    :cond_0
    return-void
.end method
