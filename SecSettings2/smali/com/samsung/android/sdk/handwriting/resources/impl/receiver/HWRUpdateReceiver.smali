.class public Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HWRUpdateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V
    .locals 0
    .param p1, "langPackManager"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    .line 33
    return-void
.end method

.method private processUpdateFailure(Ljava/lang/String;I)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "extraReason"    # I

    .prologue
    .line 64
    packed-switch p2, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private processUpdateSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateResult(Ljava/lang/String;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_LANG_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_UPDATE_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "result":I
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RMUpdateReceiver::onReceive] lang = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    .line 49
    if-ne v1, v2, :cond_2

    .line 52
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->processUpdateFailure(Ljava/lang/String;I)V

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->processUpdateSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x2

    .line 49
    if-eq v1, v2, :cond_0

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    .line 54
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown update result code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
