.class Lcom/android/launcher3/home/InstallShortcutReceiver$1;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/InstallShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

.field final synthetic val$app:Lcom/android/launcher3/LauncherAppState;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/InstallShortcutReceiver;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    iput-object p2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.shortcut.INTENT"

    const-class v20, Landroid/content/Intent;

    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$000(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.shortcut.ICON_RESOURCE"

    const-class v20, Landroid/content/Intent$ShortcutIconResource;

    .line 125
    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$000(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.extra.shortcut.ICON"

    const-class v20, Landroid/graphics/Bitmap;

    .line 127
    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$000(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 128
    :cond_0
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "Invalid install shortcut intent case 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    new-instance v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const-wide/16 v20, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V

    .line 133
    .local v8, "info":Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 134
    :cond_3
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "Invalid install shortcut intent"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v8}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$100(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 140
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "updateContactShortcut true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {v8}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLuncherActivity()Z

    move-result v18

    if-nez v18, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/Utilities;->hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 149
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring malicious intent "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    :cond_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 157
    const-string v18, "android.intent.action.MAIN"

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 158
    const/4 v12, 0x0

    .line 159
    .local v12, "isKnoxShortcut":Z
    iget-object v9, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 160
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_7

    const-string v18, "com.samsung.knox.rcp.components"

    .line 161
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "duplicate"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    const/4 v12, 0x1

    .line 167
    :cond_7
    if-nez v12, :cond_a

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$200(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 169
    invoke-static {v9}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 170
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "This shortcut is same with application!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$300(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 173
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This component("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") exist in DB."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    :cond_9
    const-string v18, "com.samsung.android.themestore"

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 177
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This component("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") have no ACTION_MAIN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "isKnoxShortcut":Z
    :cond_a
    invoke-static {v8}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$500(Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v8

    .line 191
    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    .line 192
    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.action.VIEW"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    :cond_b
    const/16 v16, 0x0

    .line 195
    .local v16, "showDuplicateToast":Z
    const/4 v4, 0x1

    .line 196
    .local v4, "addQueue":Z
    const/16 v17, 0x0

    .line 197
    .local v17, "skipToastPopup":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsInDb(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$600(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 199
    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 200
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This shortcut ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is exist in DB & Uninstallshort queue & knox."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_c
    :goto_1
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v18

    if-nez v18, :cond_16

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 216
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v11, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v5, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v14, :cond_d

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v11, v5, v0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 223
    :cond_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    if-gtz v18, :cond_16

    .line 224
    new-instance v10, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v10, "intentHome":Landroid/content/Intent;
    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 228
    .local v7, "homeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 229
    .local v6, "homeAppCount":I
    if-eqz v7, :cond_15

    .line 230
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 232
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_e
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 233
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    const-string v19, "com.sec.android.app.easylauncher"

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 234
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    const-string v19, "com.android.settings"

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 235
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 236
    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 181
    .end local v4    # "addQueue":Z
    .end local v5    # "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6    # "homeAppCount":I
    .end local v7    # "homeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "intentHome":Landroid/content/Intent;
    .end local v11    # "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "showDuplicateToast":Z
    .end local v17    # "skipToastPopup":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-static/range {v18 .. v21}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$400(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 182
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This component("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") exist in DB.(check title & intent)"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v18

    if-nez v18, :cond_a

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 186
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "This shortcut is same with application!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    .restart local v4    # "addQueue":Z
    .restart local v16    # "showDuplicateToast":Z
    .restart local v17    # "skipToastPopup":Z
    :cond_12
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This shortcut ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is exist in DB & Uninstallshort queue."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 206
    :cond_13
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This shortcut ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is exist in DB."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 209
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/InstallShortcutReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher3/home/InstallShortcutReceiver;->access$700(Lcom/android/launcher3/home/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 210
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "This shortcut ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is exist in queue."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 241
    .restart local v5    # "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v6    # "homeAppCount":I
    .restart local v7    # "homeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "intentHome":Landroid/content/Intent;
    .restart local v11    # "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_15
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Silent install shortcut due to none PreferredActivities count : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v6, v0, :cond_16

    .line 243
    const/16 v17, 0x1

    .line 248
    .end local v5    # "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6    # "homeAppCount":I
    .end local v7    # "homeAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "intentHome":Landroid/content/Intent;
    .end local v11    # "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_16
    if-eqz v16, :cond_17

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    if-nez v17, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0900b6

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 251
    .local v13, "msg":Ljava/lang/String;
    new-instance v18, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x103012b

    invoke-direct/range {v18 .. v20}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v13, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 252
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 257
    .end local v13    # "msg":Ljava/lang/String;
    :cond_17
    if-eqz v4, :cond_18

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1}, Lcom/android/launcher3/home/ExternalRequestQueue;->queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    .line 261
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    if-nez v17, :cond_1

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0900b7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v8, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 266
    .restart local v13    # "msg":Ljava/lang/String;
    sget-boolean v18, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v18, :cond_19

    .line 267
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x200f

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 268
    :cond_19
    new-instance v18, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x103012b

    invoke-direct/range {v18 .. v20}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v13, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 269
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 270
    const-string v18, "InstallShortcutReceiver"

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
