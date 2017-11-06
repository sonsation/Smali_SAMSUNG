.class Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;
.super Ljava/lang/Object;
.source "SettingManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "Settings"

    const-string v1, "onChange - it is not observing"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$500(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
