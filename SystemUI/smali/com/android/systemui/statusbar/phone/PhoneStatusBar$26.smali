.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isShortcutDrag:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 8314
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->isShortcutDrag:Z

    .line 8314
    return-void
.end method


# virtual methods
.method public startNotifcationIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 8345
    if-nez p1, :cond_0

    .line 8346
    const-string/jumbo v0, "PhoneStatusBar"

    const-string/jumbo v1, "startNotifcationIntent, null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8347
    return-void

    .line 8349
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 8350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 8344
    return-void
.end method

.method public startShortcutApp(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 8323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->isShortcutDrag:Z

    .line 8324
    if-nez p1, :cond_0

    .line 8325
    const-string/jumbo v0, "PhoneStatusBar"

    const-string/jumbo v1, "startShortcutApp, null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8326
    return-void

    .line 8328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set17(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 8329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivity(Landroid/content/Intent;Z)V

    .line 8322
    return-void
.end method

.method public startShortcutDragAnimation()V
    .locals 1

    .prologue
    .line 8333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 8334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->isShortcutDrag:Z

    .line 8332
    :cond_0
    return-void
.end method

.method public stopShortcutDragAnimation()V
    .locals 1

    .prologue
    .line 8339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 8340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->isShortcutDrag:Z

    .line 8338
    :cond_0
    return-void
.end method
