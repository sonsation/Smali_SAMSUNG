.class Lcom/samsung/android/settings/GlobalRoamingSettings$4;
.super Landroid/database/ContentObserver;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalRoamingSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GlobalRoamingSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 160
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const v2, 0x7f0b0f1f

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 157
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/samsung/android/settings/GlobalRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->-get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const v2, 0x7f0b0f1e

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
