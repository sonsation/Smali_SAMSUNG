.class Lcom/android/settings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeperConfirm;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 140
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    iget-object v7, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v7}, Lcom/android/settings/CryptKeeperConfirm;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v8}, Lcom/android/settings/CryptKeeperConfirm;->getMetricsCategory()I

    move-result v8

    .line 145
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v9}, Lcom/android/settings/CryptKeeperConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f02a1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 144
    invoke-static {v7, v8, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 163
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->-get0()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    .line 164
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->-get0()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v8

    .line 163
    invoke-virtual {v7, v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 166
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->-get0()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 167
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->-get0()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->-get0()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 170
    :cond_1
    iget-object v7, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v7}, Lcom/android/settings/CryptKeeperConfirm;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 171
    const-string/jumbo v8, "show_password"

    .line 170
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 173
    .local v4, "value":I
    invoke-static {}, Lcom/android/settings/CryptKeeperConfirm;->-get0()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v7, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    .line 175
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v5}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v5}, Lcom/android/settings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    iget-object v5, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v5, v1}, Lcom/android/settings/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    .line 181
    :try_start_0
    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 182
    .local v3, "service":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 183
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v5, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v3    # "service":Landroid/os/IBinder;
    :goto_1
    return-void

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    move v5, v6

    .line 173
    goto :goto_0

    .line 184
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "CryptKeeperConfirm"

    const-string/jumbo v6, "Error storing locale for decryption UI"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
