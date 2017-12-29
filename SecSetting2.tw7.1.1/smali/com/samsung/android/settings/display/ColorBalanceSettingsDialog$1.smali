.class Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;
.super Ljava/lang/Object;
.source "ColorBalanceSettingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;->this$0:Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;->this$0:Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->-get0(Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;->this$0:Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->-get0(Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;)Landroid/os/Handler;

    move-result-object v0

    .line 61
    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    :cond_0
    return-void
.end method
