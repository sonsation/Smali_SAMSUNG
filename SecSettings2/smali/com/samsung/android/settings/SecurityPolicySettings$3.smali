.class Lcom/samsung/android/settings/SecurityPolicySettings$3;
.super Ljava/lang/Object;
.source "SecurityPolicySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SecurityPolicySettings;->initWifiOnlyPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecurityPolicySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecurityPolicySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SecurityPolicySettings;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 266
    const-string/jumbo v2, "SecuritySettings"

    const-string/jumbo v3, "pressed wifionly key"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/SecurityPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100207

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 268
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 269
    .local v1, "val":I
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_wifi_only_db"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "entry":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 272
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0d2c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "entry":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->-get2(Lcom/samsung/android/settings/SecurityPolicySettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    const/4 v2, 0x1

    return v2

    .line 274
    .local v0, "entry":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/SecurityPolicySettings$3;->this$0:Lcom/samsung/android/settings/SecurityPolicySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecurityPolicySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0b37

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    goto :goto_0
.end method
