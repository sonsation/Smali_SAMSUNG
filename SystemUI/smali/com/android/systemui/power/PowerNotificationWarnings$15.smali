.class Lcom/android/systemui/power/PowerNotificationWarnings$15;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showSlowByChargerConnectionInfoPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

.field final synthetic val$disableAlertCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$slowByChargerConnectionInfoSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p2, "val$disableAlertCheckBox"    # Landroid/widget/CheckBox;
    .param p3, "val$slowByChargerConnectionInfoSharedPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$15;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$15;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$15;->val$slowByChargerConnectionInfoSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$15;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$15;->val$slowByChargerConnectionInfoSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1399
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DoNotShowSlowByChargerConnectionInfo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1396
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
