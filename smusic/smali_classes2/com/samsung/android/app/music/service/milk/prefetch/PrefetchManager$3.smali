.class Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$3;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$3;->this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 561
    const-string v1, "my_music_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mobile_data"

    .line 562
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 564
    .local v0, "isOn":Z
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSettingChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$3;->this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.prefetch.manager.prefetch_delayed"

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager$3;->this$0:Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/prefetch/PrefetchManager;->startPrefetch()V

    .line 569
    .end local v0    # "isOn":Z
    :cond_1
    return-void
.end method
