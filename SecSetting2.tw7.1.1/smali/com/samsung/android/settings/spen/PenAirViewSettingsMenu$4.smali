.class Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    .line 300
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    invoke-static {}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-get0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_information_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_icon_label"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_list_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pen_hovering_link_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    return-void
.end method
