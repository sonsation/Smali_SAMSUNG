.class Lcom/android/launcher3/LauncherModel$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->forceIconReload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 463
    .local v0, "packagesToIgnore":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/HomeLoader;->getIgnorePackage(Ljava/util/HashSet;)V

    .line 464
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->access$400(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/model/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 467
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$2;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeLoader;->updateShortcutIcons()V

    .line 468
    return-void
.end method
