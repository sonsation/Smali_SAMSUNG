.class Lcom/android/server/policy/TspStateManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/TspStateManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/TspStateManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    .line 93
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 100
    const-string v0, "TspStateManagerInternal"

    const-string v1, "onChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v0}, Lcom/android/server/policy/TspStateManager;->-wrap0(Lcom/android/server/policy/TspStateManager;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-static {v0}, Lcom/android/server/policy/TspStateManager;->-wrap1(Lcom/android/server/policy/TspStateManager;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    .line 98
    return-void
.end method
