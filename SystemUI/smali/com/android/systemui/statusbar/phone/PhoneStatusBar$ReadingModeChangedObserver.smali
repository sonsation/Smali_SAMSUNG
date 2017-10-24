.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ReadingModeChangedObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingModeChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 9064
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ReadingModeChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 9065
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9064
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 9069
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 9072
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ReadingModeChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sw_screen_mode_setting"

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 9071
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 9072
    const/4 v2, 0x1

    .line 9071
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 9073
    .local v0, "doEnable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ReadingModeChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap14(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 9068
    return-void

    .line 9071
    .end local v0    # "doEnable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "doEnable":Z
    goto :goto_0
.end method
