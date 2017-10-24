.class public Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HWRProgressReceiver.java"


# instance fields
.field private mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V
    .locals 0
    .param p1, "langPackManager"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_LANG_KEY:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "language":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_PROGRESS:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, "progress":I
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;->mLangPackManager:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->setProgressLanguage(Ljava/lang/String;I)V

    .line 42
    return-void
.end method
