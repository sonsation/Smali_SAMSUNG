.class Lcom/android/launcher3/LauncherModel$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->handleSCloudRestoreComplete(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherModel;

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1743
    iget-object v9, p0, Lcom/android/launcher3/LauncherModel$12;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1744
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "EMPTY_DATABASE_CREATED"

    invoke-interface {v3, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1745
    const-string v9, "Launcher.Model"

    const-string v10, "launcher DB is empty. so skip~"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :goto_0
    return-void

    .line 1749
    :cond_0
    iget-object v9, p0, Lcom/android/launcher3/LauncherModel$12;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1750
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "restored=?"

    .line 1751
    .local v5, "selection":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v12

    .line 1753
    .local v6, "selectionArg":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1754
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "restored"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1756
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1757
    sget-object v7, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Easy;->CONTENT_URI:Landroid/net/Uri;

    .line 1758
    .local v7, "tableUri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1759
    sget-object v7, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_Standard;->CONTENT_URI:Landroid/net/Uri;

    .line 1762
    :cond_1
    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update restored value to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1767
    .end local v7    # "tableUri":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1768
    sget-object v7, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    .line 1770
    .restart local v7    # "tableUri":Landroid/net/Uri;
    const-string v9, "home_only_mode"

    invoke-interface {v3, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1771
    .local v2, "isHomeOnly":Z
    if-eqz v2, :cond_3

    .line 1772
    sget-object v7, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    .line 1775
    :cond_3
    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update restored value to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1779
    .end local v2    # "isHomeOnly":Z
    .end local v7    # "tableUri":Landroid/net/Uri;
    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v9}, Lcom/android/launcher3/LauncherModel;->access$700(Lcom/android/launcher3/LauncherModel;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1780
    :cond_5
    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "workspace("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") or allapps("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher3/LauncherModel;->access$700(Lcom/android/launcher3/LauncherModel;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") not loaded. update restored value"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    sget-object v9, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v9, v8, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1785
    :cond_6
    iget-object v9, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher3/LauncherModel;->mHomeLoader:Lcom/android/launcher3/home/HomeLoader;

    iget-object v10, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v10}, Lcom/android/launcher3/LauncherModel;->access$600(Lcom/android/launcher3/LauncherModel;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/HomeLoader;->removeUnRestoredItems(Z)V

    .line 1786
    iget-object v9, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher3/LauncherModel;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-object v10, p0, Lcom/android/launcher3/LauncherModel$12;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v10}, Lcom/android/launcher3/LauncherModel;->access$700(Lcom/android/launcher3/LauncherModel;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher3/allapps/model/AppsModel;->removeUnRestoredItems(Z)V

    .line 1789
    const-string v9, "Launcher.Model"

    const-string v10, "delete S Cloud restore directory"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/launcher3/LauncherModel$12;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/BackupRestore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1791
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/restore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1792
    .local v4, "restorePath":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->deleteDir(Ljava/lang/String;)V

    .line 1793
    invoke-static {v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->deleteDir(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
