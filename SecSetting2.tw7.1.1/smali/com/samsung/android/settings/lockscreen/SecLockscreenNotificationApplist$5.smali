.class Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;
.super Ljava/lang/Object;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    .prologue
    .line 970
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get4(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->executeBixby()V

    goto :goto_0
.end method
