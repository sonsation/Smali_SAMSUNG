.class Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showAirViewTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 1222
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1223
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    .line 1222
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1225
    const-string/jumbo v1, "accessibility_magnifier"

    .line 1224
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1227
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 1228
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1229
    const-string/jumbo v1, "finger_magnifier"

    .line 1228
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1230
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Z)V

    .line 1221
    return-void
.end method
