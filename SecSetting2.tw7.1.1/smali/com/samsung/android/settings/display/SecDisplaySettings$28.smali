.class Lcom/samsung/android/settings/display/SecDisplaySettings$28;
.super Ljava/lang/Object;
.source "SecDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

.field final synthetic val$accessibility:I

.field final synthetic val$menu:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/SecDisplaySettings;
    .param p2, "val$accessibility"    # I
    .param p3, "val$menu"    # I

    .prologue
    .line 2995
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    iput p2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    iput p3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

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

    .line 2997
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    if-nez v0, :cond_2

    .line 2998
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 2999
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    packed-switch v0, :pswitch_data_0

    .line 2996
    :cond_0
    :goto_0
    return-void

    .line 3001
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3004
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get14(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3005
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3007
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3011
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    if-ne v0, v2, :cond_3

    .line 3012
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3013
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3015
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3018
    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$accessibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3019
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3020
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "FmMagnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3021
    iget v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->val$menu:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3023
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$28;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 2999
    :pswitch_data_0
    .packed-switch 0x7f0b04cf
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3013
    :pswitch_data_1
    .packed-switch 0x7f0b04d0
        :pswitch_2
    .end packed-switch

    .line 3021
    :pswitch_data_2
    .packed-switch 0x7f0b04d0
        :pswitch_3
    .end packed-switch
.end method