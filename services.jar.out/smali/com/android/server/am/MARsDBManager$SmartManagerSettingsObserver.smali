.class Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsDBManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    .line 1849
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1848
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    .line 1855
    const-string/jumbo v0, "MARsDBManager"

    const-string/jumbo v1, "onChange - mSmartManagerSettingsObserver!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/MARsDBManager;->-wrap6(Lcom/android/server/am/MARsDBManager;Z)V

    .line 1853
    return-void
.end method
