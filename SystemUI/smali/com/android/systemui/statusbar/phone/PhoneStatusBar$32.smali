.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z
    .param p4, "batteryStatus"    # I
    .param p5, "batteryHealth"    # I
    .param p6, "batteryOnline"    # I
    .param p7, "plugType"    # I
    .param p8, "powerSupply"    # Z

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set1(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->updateBatteryTextLevel(I)V

    .line 1362
    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 5
    .param p1, "isPowerSave"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1347
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get29(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get9(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 1348
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get21(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1349
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get21(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->firePowerSaveChanged(Z)V

    .line 1353
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v2, :cond_1

    .line 1354
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set5(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1355
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_2

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set7(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get32(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get35(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePowerSaver(ZZ)V

    .line 1346
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1355
    goto :goto_0
.end method
