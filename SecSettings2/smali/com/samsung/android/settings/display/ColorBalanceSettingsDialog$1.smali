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
    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;->this$0:Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog$1;->this$0:Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ColorBalanceSettingsDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->restoreSettings(Landroid/content/Context;)V

    .line 55
    return-void
.end method
