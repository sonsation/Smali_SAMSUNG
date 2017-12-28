.class Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutsChangedTask"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateIdMap:Z

.field private final mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p5, "updateIdMap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1353
    .local p3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;>;"
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1354
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    .line 1355
    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    .line 1356
    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1357
    iput-boolean p5, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mUpdateIdMap:Z

    .line 1358
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->access$100(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->onShortcutsChanged(Ljava/util/List;)V

    .line 1363
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mShortcuts:Ljava/util/List;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-boolean v4, p0, Lcom/android/launcher3/LauncherModel$ShortcutsChangedTask;->mUpdateIdMap:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/HomeLoader;->updateDeepShortcutsChanged(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 1364
    return-void
.end method
