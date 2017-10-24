.class Lcom/android/systemui/power/PowerNotificationWarnings$3;
.super Landroid/database/ContentObserver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2008
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "low_power"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2011
    .local v1, "powerSaving":I
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get3(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v0

    .line 2012
    .local v0, "oldBatteryMode":I
    if-eqz v1, :cond_1

    .line 2013
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set1(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    .line 2025
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get0(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v2

    .line 2024
    if-eqz v2, :cond_0

    .line 2026
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get3(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 2027
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get4(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSavingRecommendNotice(I)V

    .line 2007
    :cond_0
    return-void

    .line 2015
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$3;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set1(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto :goto_0
.end method
