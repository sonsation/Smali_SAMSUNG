.class Lcom/android/systemui/statusbar/BaseStatusBar$10;
.super Lcom/android/keyguard/KnoxStateMonitorCallback;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersonaLaunch(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput p1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 1238
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap3(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 1236
    return-void
.end method

.method public onPersonaStateChange()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 1228
    return-void
.end method

.method public onRCPPolicyChange()V
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 1232
    return-void
.end method

.method public onUpdateQuickPanelButtonUsers()V
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateQuickSettingPanelVisibility()V

    .line 1246
    return-void
.end method

.method public onUpdateQuickPanelButtons()V
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateQuickSettingPanel(Z)V

    .line 1242
    return-void
.end method

.method public onUpdateStatusBarHidden()V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateStatusBarHidden()V

    .line 1250
    return-void
.end method

.method public onUpdateStatusBarIcons()V
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateStatusBarIcons()V

    .line 1254
    return-void
.end method

.method public onUpdateStatusBarText()V
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateKnoxCustomStatusBarText()V

    .line 1258
    return-void
.end method
