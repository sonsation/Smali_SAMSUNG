.class public Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;
.super Lcom/samsung/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodAndLanguageSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 216
    .local v0, "modIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v1, ":settings:show_fragment_title_resid"

    const v2, 0x7f0b1510

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    :cond_0
    return-object v0
.end method
