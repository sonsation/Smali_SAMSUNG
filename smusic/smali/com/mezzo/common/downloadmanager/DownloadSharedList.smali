.class public Lcom/mezzo/common/downloadmanager/DownloadSharedList;
.super Ljava/lang/Object;
.source "DownloadSharedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mezzo/common/downloadmanager/DownloadSharedList$KEY;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private saveFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveFileName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "downloadsharedlist"

    iput-object v0, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveFileName:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveFileName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getDownload()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    iget-object v1, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveFileName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "downloadlist"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeAllDownloadList()V
    .locals 5

    .prologue
    .line 47
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveFileName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    const-string/jumbo v2, "\ubb38\uc11c\ud30c\uc77c \ubaa8\ub450 \uc81c\uac70"

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public removeDownloadList()V
    .locals 5

    .prologue
    .line 38
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveFileName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "downloadlist"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    const-string/jumbo v2, "\ubb38\uc11c\ud30c\uc77c \ub9ac\uc2a4\ud2b8 \uc81c\uac70"

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public saveDownload(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v2, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mezzo/common/downloadmanager/DownloadSharedList;->saveFileName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "downloadlist"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\ubb38\uc11c\ud30c\uc77c \uc800\uc7a5 : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->filelog(Ljava/lang/String;)V

    .line 35
    return-void
.end method
