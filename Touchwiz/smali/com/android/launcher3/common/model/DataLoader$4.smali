.class Lcom/android/launcher3/common/model/DataLoader$4;
.super Ljava/lang/Object;
.source "DataLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/DataLoader;->bindDeepShortcuts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/DataLoader;

.field final synthetic val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/DataLoader;Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/DataLoader;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/launcher3/common/model/DataLoader$4;->this$0:Lcom/android/launcher3/common/model/DataLoader;

    iput-object p2, p0, Lcom/android/launcher3/common/model/DataLoader$4;->val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 917
    sget-object v1, Lcom/android/launcher3/common/model/DataLoader;->sLauncherModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 918
    .local v0, "callbacks":Lcom/android/launcher3/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 919
    iget-object v1, p0, Lcom/android/launcher3/common/model/DataLoader$4;->val$shortcutMapCopy:Lcom/android/launcher3/util/MultiHashMap;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 921
    :cond_0
    return-void
.end method
