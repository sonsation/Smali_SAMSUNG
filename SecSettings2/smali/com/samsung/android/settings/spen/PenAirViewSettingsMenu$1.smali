.class Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$1;
.super Landroid/database/ContentObserver;
.source "PenAirViewSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$1;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-static {}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-get0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 99
    const-string/jumbo v2, "pen_hovering"

    .line 98
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "airViewState":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$1;->this$0:Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->-get1(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 97
    return-void

    .line 99
    .end local v0    # "airViewState":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "airViewState":Z
    goto :goto_0
.end method
