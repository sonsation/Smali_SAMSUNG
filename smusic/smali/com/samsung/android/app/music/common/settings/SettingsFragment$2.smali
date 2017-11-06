.class Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;
.super Ljava/util/TimerTask;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/SettingsFragment;->startAutoOffTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

.field final synthetic val$targetTime:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    iput-wide p2, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;->val$targetTime:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->access$300(Lcom/samsung/android/app/music/common/settings/SettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$2$1;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1025
    return-void
.end method
